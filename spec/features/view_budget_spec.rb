require "rails_helper"

RSpec.feature "Users can view budget" do 
	let(:budget) { FactoryGirl.create(:budget)}

	before do 
		FactoryGirl.create(:budget, amount: 5)
		visit "/"
	end

	scenario "for given budget" do 
		expect(page).to have_content (5)
	end
end