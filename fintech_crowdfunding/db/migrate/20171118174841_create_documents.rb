class CreateDocuments < ActiveRecord::Migration[5.1]
  def change
    create_table :documents do |t|
      t.string :originatorCode
      t.string :originatorName
      t.string :originatorType
      t.string :receiverCode
      t.string :receiverName
      t.string :receiverType
      t.string :documentType
      t.datetime :createdBy

      t.timestamps
    end
  end
end
