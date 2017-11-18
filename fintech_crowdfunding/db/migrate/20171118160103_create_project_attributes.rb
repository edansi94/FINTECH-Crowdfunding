class CreateProjectAttributes < ActiveRecord::Migration[5.1]
  def change
    create_table :project_attributes do |t|
      t.integer :projectAttributesId, null: false
      t.integer :projectAttributesCode
      t.string :projectCode
      t.integer :metaDataChain
      t.integer :descriptorCode01
      t.integer :descriptorCode02
      t.integer :descriptorCode03
      t.string :additionalValue01
      t.string :additionalValue02
      t.string :additionalValue03
      t.integer :createdBy

      t.timestamps
    end
  end
end
