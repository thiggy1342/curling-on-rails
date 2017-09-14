class Team < ApplicationRecord
	validates :lead, presence: true
	validates :second, presence: true
	validates :vice, presence: true
	validates :skip, presence: true
end
