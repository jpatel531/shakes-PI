class Work < ActiveRecord::Base
	has_many :characters
	has_many :paragraphs, through: :characters
	# set_primary_key :workid
end
