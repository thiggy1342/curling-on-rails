class Team < ApplicationRecord
	belongs_to :league
	has_many :players

	def get_lead
		self.players.each do |player|
			if player.position == 'lead'
				return player
			end
		end
	end
end
