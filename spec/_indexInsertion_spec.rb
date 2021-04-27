require 'rails_helper'

RSpec.describe "index Insertion", :type => :feature do

	it "Receive a list of all insertions" do
		
		visit '/insertions'
		
		expect(page).to have_content('pagina inserzioni')
	end
end
