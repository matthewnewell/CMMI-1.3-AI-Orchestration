class GenericPractice < ActiveRecord::Base
	belongs_to :generic_goal
	has_many :generic_practice_elaborations
end
