class GenericPracticeElaboration < ActiveRecord::Base
	belongs_to :process_area
	belongs_to :specific_practice
	belongs_to :generic_practice
end
