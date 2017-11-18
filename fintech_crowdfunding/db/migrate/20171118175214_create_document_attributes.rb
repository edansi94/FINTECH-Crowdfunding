class CreateDocumentAttributes < ActiveRecord::Migration[5.1]
  def change
    create_table :document_attributes do |t|
      t.string :documentAttributesDescriptor
      t.references :Document, foreign_key: true
      t.integer :metadataChain
      t.string :descriptorCode01
      t.string :descriptorCode02
      t.string :descriptorCode03
      t.string :additionalValue01
      t.string :additionalValue02
      t.string :additionalValue03

      t.timestamps
    end
  end
end
