# require 'rails_helper'

# RSpec.describe Project,type: :model  do
# 	it "dose not allow a user to have duplicate title" do 
# 		user = User.create(name: "shiva")
# 		user.projects.create(title: "point of sale")
# 		new_project = user.projects.build(title: "point of sale")
# 		new_project.valid?
# 		expect(new_project.errors[:title]).to include("has already been taken")
# 	end
# end
