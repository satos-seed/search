class Reservation < ApplicationRecord
	has_many :reservation_fixing
	belongs_to :reservation
end
