class AddTypeToMovements < ActiveRecord::Migration[8.0]
  def change
    add_column :movements, :type, :integer
  end
end
