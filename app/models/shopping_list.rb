class ShoppingList < ApplicationRecord
  belongs_to :user
  belongs_to :shopper, optional: true, class_name: 'User'
end
