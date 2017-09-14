class League < ApplicationRecord
	has_many :games
	has_many :teams

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

	def generate_games
		length.times do |i|
			date = start_date + (7 * i)
			sheets.times do |sheet|
				self.games.create(start_date: date, start_time: game_start_time, sheet: sheet+1)
			end
		end
	end
end
