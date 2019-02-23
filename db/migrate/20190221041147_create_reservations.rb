class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.datetime :schedule
      t.string :name
      t.string :email
      t.string :phone
      t.text :remarks

      t.timestamps
    end
  end
end
