class ProcessArea < ActiveRecord::Base
	has_many :specific_goals
	belongs_to :maturity_level
	belongs_to :process_area_category
end
