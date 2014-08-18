class Work < ActiveRecord::Base
	has_many :characters
	has_many :paragraphs, through: :characters
	has_many :chapters
	# set_primary_key :workid
end
