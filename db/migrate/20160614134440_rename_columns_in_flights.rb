class RenameColumnsInFlights < ActiveRecord::Migration
  def change
    rename_column :flights, :origin, :from
    rename_column :flights, :destination, :to
    rename_column :flights, :departure, :date
    add_foreign_key :flights, :planes
  end
end
