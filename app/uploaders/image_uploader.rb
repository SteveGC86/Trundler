require "image_processing/mini_magick"

class ImageUploader < Shrine
    plugin :processing
    plugin :versions, names: [:original, :thumb, :medium]
    plugin :validation_helpers
    plugin :delete_raw # delete processed files after uploading


     process(:store) do |io, context|
        original = io.download
        pipeline = ImageProcessing::MiniMagick.source(original)
        size_80 = pipeline.resize_to_limit!(80, 80)
        size_300 = pipeline.resize_to_limit!(300, 300)
        original.close!
        # return hash of 3 sizes of the same image
        { original: io, thumb: size_80, medium: size_300 }
    end

    Attacher.validate do
      validate_max_size 1.megabyte, message: "is too large (max is 1 MB)"
      validate_mime_type_inclusion ['image/jpg', 'image/jpeg', 'image/png']
  end
end
