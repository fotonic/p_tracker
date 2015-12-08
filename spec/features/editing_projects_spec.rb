require 'rails_helper'

RSpec.feature "Users can edit existng projects" do
	before do
		FactoryGirl.create(:project, name: "Braxton Brewery")

		visit "/"
		click_link "Braxton Brewery"
		click_link "Edit Project"
	end

	scenario "with valid attributes" do
		fill_in "Name", with: "Rhinegeist"
		click_button "Update Project"

		expect(page).to have_content("Project has been updated.")
		expect(page).to have_content("Rhinegeist")
	end
end
