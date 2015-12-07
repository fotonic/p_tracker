require "rails_helper"

RSpec.feature "Users can create new projects" do

	before do
		visit "/"
		click_link "New Project"
	end

	scenario "With valid attributes" do
		fill_in "Name", with: "Braxton Brewery"
		fill_in "Description", with: "Braxton's roadmap to mass regional takeover"
		click_button "Create Project"
		expect(page).to have_content "Project has been created."

		project = Project.find_by(name: "Braxton Brewery")
		expect(page.current_url).to eq project_url(project)

		title = "Braxton Brewery - Projects - Ticketee"
		expect(page).to have_title title
	end

	scenario "With invalid attributes" do
		click_button "Create Project"
		expect(page).to have_content "Project has not been created"
		expect(page).to have_content "Name can't be blank"
	end
 end
