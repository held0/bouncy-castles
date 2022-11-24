class AddAcceptedToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :accepted, :boolean, default: false
  end
end
