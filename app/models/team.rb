class Team < ApplicationRecord
	belongs_to :leagues
	has_and_belongs_to_many :games
	has_and_belongs_to_many :players

	validates :lead, presence: true
	validates :second, presence: true
	validates :vice, presence: true
	validates :skip, presence: true
end
