class Player < ApplicationRecord
	has_many :leagues, :through => :teams
	has_and_belongs_to_many :teams

	validates :first_name, presence: true
	validates :last_name, presence: true
end
