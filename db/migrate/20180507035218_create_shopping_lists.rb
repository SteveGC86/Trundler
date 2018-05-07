class CreateShoppingLists < ActiveRecord::Migration[5.2]
  def change
    create_table :shopping_lists do |t|
      t.references :user, foreign_key: true
      # t.references :shopper, foreign_key: true
      t.integer :shopper_id
      t.boolean :delivered
      t.timestamp :delivered_at

      t.timestamps
    end

    add_foreign_key :shopping_lists, :users, column: :shopper_id
    add_index :shopping_lists, :shopper_id
  end
end
