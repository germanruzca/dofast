class CreateOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :offers do |t|
      t.string :title
      t.text :description
      t.decimal :earning
      t.references :offer_types, null: false, foreign_key: true
      t.string :media
      t.boolean :accepted
      t.boolean :closed
      t.boolean :previous_conversation
      t.timestamp :delivered_at
      t.references :status, null: false, foreign_key: true

      t.timestamps
    end
  end
end
