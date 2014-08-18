class Character < ActiveRecord::Base
  belongs_to :work
  has_many :paragraphs
end
