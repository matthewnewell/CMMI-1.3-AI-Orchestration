class GenericPracticeElaboration < ActiveRecord::Base
	belongs_to :specific_practice
	belongs_to :generic_practice
end
