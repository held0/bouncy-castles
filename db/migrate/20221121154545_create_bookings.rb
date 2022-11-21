class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.text :comment
      t.date :date_from
      t.date :date_to
      t.references :user, null: false, foreign_key: true
      t.references :castle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
