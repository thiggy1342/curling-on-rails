class League < ApplicationRecord
	has_many :games

	validates :length, 
				numericality: {
					less_than: 52,
					greater_than: 1,
					only_integer: true
				}
	validates :day_of_the_week,
				inclusion: {
					in: %w(Sunday Monday Tuesday Wednesday Thursday Friday Saturday),
					message: "%{value} is not a valid day of the week."
					}
	validates :sheets,
				numericality: {
					greater_than: 1,
					only_integer: true
				}
	validates :manager, presence: true
end
