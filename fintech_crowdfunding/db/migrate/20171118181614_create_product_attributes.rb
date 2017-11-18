class CreateProductAttributes < ActiveRecord::Migration[5.1]
  def change
    create_table :product_attributes do |t|
      t.string :productAttributesDescriptor
      t.references :Product, foreign_key: true
      t.integer :metadataChain
      t.string :descriptorCode01
      t.string :descriptorCode02
      t.string :descriptorCode03

      t.timestamps
    end
  end
end
