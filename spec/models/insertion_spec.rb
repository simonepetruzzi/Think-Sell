require "rails:helper"
Rspec.describe Insertion, :type => :model do

	before(:all) do
      @insertion1 = create(:insertion)	
	end
	
	it "is valid with valid attributes" do
	  expect(@insertion1).to be valid
	end
	
	it "is not valid without a title" do 
      insertion2 = build(:inserion, title: nil)
      expect(insertion2).to_not be_valid
  	end
  	
  	it "is not valid without a price" do 
      insertion2 = build(:insertion, price: nil)
      expect(game2).to_not be_valid
    end

end
