require 'rails_helper'
RSpec.describe "add User", :type => :feature do
	it "User 'John Doe' is registered in the application" do
		user_1=FactoryBot.create(:user)
		visit "users/sign_in"
		fill_in "email", with: user_1.email
		fill_in "password2", with: user_1.password
		click_button "Log In"
		expect(page).to have_content("Signed in successfully")
		
	end
end
