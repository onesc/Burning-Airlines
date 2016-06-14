class RenameColumnsInFlightsAgain < ActiveRecord::Migration
  def change
    rename_column :flights, :name, :number
  end
end
