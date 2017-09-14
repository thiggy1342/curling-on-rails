class Team < ApplicationRecord
	belongs_to :team

	# validates :lead, presence: true
	# validates :second, presence: true
	# validates :vice, presence: true
	# validates :skip, presence: true
end
