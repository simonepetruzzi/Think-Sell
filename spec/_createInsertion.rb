require 'rails_helper'
RSpec.describe "create Insertion", :type => :feature do

	it "User create a new insertion" do
		user = FactoryBot.create(:user)
		insertion = FactoryBot.create(:insertion)
		visit "users/sign_in"
		fill_in "email", with: user.email
		fill_in "password2", with: user.password
		click_button "Log In"
		expect(page).to have_content("Signed in successfully")
		visit '/insertions/new'
		expect(page).to have_content("Nuova Inserzione")
		fill_in 'title2',with: insertion.title
		fill_in 'price2',with: insertion.price
		click_button "submit"
		expect(page).to have_content("#{insertion.title}")
		
	end
end	
