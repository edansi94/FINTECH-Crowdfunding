class CreateUserAttributes < ActiveRecord::Migration[5.1]
  def change
    create_table :user_attributes do |t|
      t.string :userAttributesDescriptor
      t.string :username
      t.integer :metadataChain
      t.integer :descriptorCode01
      t.integer :descriptorCode02
      t.integer :descriptorCode03
      t.string :additionalValue01
      t.string :additionalValue02
      t.string :additionalValue03

      t.timestamps
    end
  end
end
