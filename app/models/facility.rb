class Facility < ApplicationRecord
	belongs_to :genre
	belongs_to :store
	has_many :reservation
	enum status: {空き: 1, 使用中: 2}
	enum genre_status: {ダーツ: 1, ビリヤード: 2, その他: 3}  
end
