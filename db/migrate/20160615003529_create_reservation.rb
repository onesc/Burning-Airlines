class CreateReservation < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.belongs_to :user, index: true
      t.belongs_to :flight, index: true
      t.string :seat
    end
    add_foreign_key :reservations, :casein_admin_users, column: :user_id
    add_foreign_key :reservations, :flights
  end
end
