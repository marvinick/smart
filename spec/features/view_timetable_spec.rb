require "rails_helper" 

RSpec.feature "Users can view timetable" do 
	let(:timetable) { FactoryGirl.create(:timetable) }

	before do 
		FactoryGirl.create(:timetable, day: 1, hour: 4)
		visit "/"
	end 

	scenario "given timetable" do 
		expect(page).to have_content (1)
		expect(page).to have_content (4)
	end
end
