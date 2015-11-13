require "rails_helper"

RSpec.feature "Users can enter amount of time" do 
	scenario "valid attributes"	do
		visit "/"
		click_link "Time Table" 
		fill_in "Day", with: 1
		fill_in "Hour", with: 5
		click_button "Create Timetable"

		expect(page).to have_content "Timetable has been created."
	end
end