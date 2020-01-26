class CreateReservationFixings < ActiveRecord::Migration[5.2]
  def change
    create_table :reservation_fixings do |t|

      t.timestamps
    end
  end
end
