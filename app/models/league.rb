class League < ApplicationRecord
	has_many :games
	has_many :teams
	has_many :players, :through => :teams

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
			date = start_date + 7 * i
			time = game_start_time.seconds_since_midnight.seconds
			datetime = date + time
				sheets.times do |sheet|
					Game.new(start_date_time: datetime, sheet: sheet)
				end
		end
	end
end
