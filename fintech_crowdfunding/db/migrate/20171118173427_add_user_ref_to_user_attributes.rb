class AddUserRefToUserAttributes < ActiveRecord::Migration[5.1]
  def change
    add_reference :user_attributes, :users, foreign_key: true
  end
end
