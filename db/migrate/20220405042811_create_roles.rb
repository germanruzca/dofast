class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.string :role
      t.text :description

      t.timestamps
    end
  end
end
