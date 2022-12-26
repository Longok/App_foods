class CreateCheckouts < ActiveRecord::Migration[7.0]
  def change
    create_table :checkouts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :cart, null: false, foreign_key: true
      t.integer :phone
      t.string :address
      t.string :note
      t.string :payment_type

      t.timestamps
    end
  end
end
