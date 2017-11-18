class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :type
      t.string :category
      t.string :subcategory
      t.string :amountsCurrency
      t.float :bumSuggestedPrice
      t.datetime :suggestedPriceDate
      t.string :productShipping
      t.datetime :productAvailability
      t.integer :productMaximumQuantity
      t.integer :productMinimumQuantity
      t.string :productStatus
      t.string :createdBy

      t.timestamps
    end
  end
end
