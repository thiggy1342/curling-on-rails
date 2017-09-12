class Player < ApplicationRecord
	has_and_belongs_to_many :leagues
	has_and_belongs_to_many :teams

	validates :first_name, presence: true
	validates :last_name, presence: true
end
