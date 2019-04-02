class AddMenuToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :menu, :string
  end
end
