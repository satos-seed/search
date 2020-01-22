class Genre < ApplicationRecord
	has_many :facilites
	enum category: {DARTSLVE: 1, DARTSLVE2: 2, DARTSLVE3: 3, TouchLive: 4, ビリヤード: 5}
end
