class AddNumberToAccount < ActiveRecord::Migration[8.0]
  def change
    add_column :accounts, :number, :string
  end
end
