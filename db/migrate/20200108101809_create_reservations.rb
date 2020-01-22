class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|

    	t.string :reservation_name, null: false
    	t.string :email, null: false
    	t.string :count, null: false
    	t.string :table_numbre, null: false
    	t.string :time, null: false
    	t.timestamps
    end
  end
end
