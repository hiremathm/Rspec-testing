require 'rails_helper'

RSpec.describe Album  do
	
	subject {Album.new}

	it "is not valid without title" do 
		expect(subject).not_to be_valid
	end

	it "the title value no longer more than 100" do
		subject.title = 'a' * 101
		expect(subject).not_to be_valid
	end

	it "it is valid with proper data" do
		subject.title = 'a' * 99
		expect(subject).to be_valid
	end

end
