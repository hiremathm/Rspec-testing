class Order < ActiveRecord::Base

	belongs_to :user
	validates :name, presence: true, uniqueness: { scope: :user_id }
	# validates :order_number, presence: true, numericality: true	
end
