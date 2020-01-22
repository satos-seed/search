class CreateFacilities < ActiveRecord::Migration[5.2]
	def change
		create_table :facilities do |t|

			t.integer :progress, default: 1
			t.integer :table_status, default: 1
			t.integer :table_count, null: false
			t.integer :store_id, null: false
			t.integer :genre_id, null: false
			t.timestamps
		end
	end
end
