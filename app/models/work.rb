class Work < ActiveRecord::Base
	has_many :characters
	has_many :paragraphs, through: :characters
	has_many :chapters

	def to_param
		workid
	end
end
