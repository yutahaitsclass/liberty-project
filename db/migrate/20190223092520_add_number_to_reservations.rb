class AddNumberToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :number, :integer
  end
end
