class AddColumnsToReservations < ActiveRecord::Migration
  def change
      add_column :reservations, :row_number, :integer
      add_column :reservations, :column_number, :integer
      add_column :reservations, :reserved, :boolean
  end
end
