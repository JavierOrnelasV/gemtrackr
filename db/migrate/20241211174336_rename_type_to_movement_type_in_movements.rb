class RenameTypeToMovementTypeInMovements < ActiveRecord::Migration[8.0]
  def change
    rename_column :movements, :type, :movement_type
  end
end
