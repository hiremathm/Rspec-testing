require 'rails_helper'

RSpec.describe Album,type: :model  do
	# it "is not valid without title" do 
	# 	album = Album.new(title: "")
	# 	expect(album).to be_valid
	# end

	# it "is valid with title" do 
	# 	album = Album.new(title: "shiva")
	# 	expect(album).to be_valid
	# end

	# it "is invalid without title" do 
	# 	album = Album.new(title: nil)
	# 	album.valid?
	# 	expect(album.errors[:title]).to include("can't be blank")
	# end

	# it "is invalid with duplicate title" do 
	# 	Album.create(title: "shiva")
	# 	album = Album.new(title: "shiva")
	# 	album.valid?
	# 	expect(album.errors[:title]).to include("has already been taken")
	# end
end
