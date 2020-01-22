class Facility < ApplicationRecord
	belongs_to :genre
	belongs_to :store
	has_many :reservation
	enum progress: {空き: 1, 使用中: 2}
	enum table_status: {ダーツ: 1, ビリヤード: 2, その他: 3}  
end
