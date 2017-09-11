class Game < ApplicationRecord
	belongs_to :leagues
	has_and_belongs_to_many :teams
end
