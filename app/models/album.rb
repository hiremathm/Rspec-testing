class Album < ActiveRecord::Base
	validates_presence_of :title
	# validates_length_of :title, maximum: 5
  	validates :title, uniqueness: true

end
