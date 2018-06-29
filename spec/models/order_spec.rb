require 'rails_helper'

RSpec.describe Order,type: :model  do
	it "dose not allow a user to have duplicate name" do 
		user = User.create(name: "shiva")
		user.orders.create(name: "point of sale")
		new_order = user.orders.build(name: "point of sale")
		new_order.valid?
		expect(new_order.errors[:name]).to include("has already been taken")
	end

	it "allow other users to have same order name" do 
		user = User.create(name: "shiva")
		user.orders.create(name: "point of sale")

		other_user = User.create(name: "deepa")
		other_order = other_user.orders.build(name: "point of sale")
		expect(other_order).to be_valid
	end

	# it "dose not allow the user to enter the text with number" do 
	# 	user = User.create(name: "shiva")
	# 	new_order = user.orders.create(order_number: 123)
	# 	new_order.valid?
	# 	expect(new_order.errors[:name]).to include("is not a number")
	# end
end
