class CreateMovements < ActiveRecord::Migration[8.0]
  def change
    create_table :movements do |t|
      t.references :account, null: false, foreign_key: true
      t.decimal :amount
      t.integer :category

      t.timestamps
    end
  end
end
