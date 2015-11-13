require "rails_helper" 

RSpec.feature "Users can enter budget" do 
	scenario "with valid attributes" do
		visit "/"
		click_link "Enter Budget" 
		fill_in "Amount", with: 10 
		click_button "Create Budget" 

		expect(page).to have_content "Budget has been created."
	end
end