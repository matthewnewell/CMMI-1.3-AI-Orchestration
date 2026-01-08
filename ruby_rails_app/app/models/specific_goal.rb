class SpecificGoal < ActiveRecord::Base
	has_many :specific_practices
	belongs_to :process_area
end
