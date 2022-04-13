class CreateOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :offers do |t|
      t.string :title
      t.text :description
      t.decimal :earning
      t.references :offer_type, null: false, foreign_key: true
      t.string :media
      t.boolean :accepted, default: false
      t.boolean :closed, default: false
      t.boolean :previous_conversation
      t.references :tag, null: false, foreign_key: true
      t.timestamp :delivered_at
      t.references :status, null: false, foreign_key: true, default: 1

      t.timestamps
    end
  end
end
