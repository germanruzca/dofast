class AddFieldsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :bio, :text
    add_column :users, :state, :string
    add_column :users, :country, :string
    add_reference :users, :role, null: false, foreign_key: true, default: 1
    add_reference :users, :status, null: false, foreign_key: true, default: 1
  end
end
