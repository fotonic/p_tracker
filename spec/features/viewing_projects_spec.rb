require 'rails_helper'

RSpec.feature "Users can view projects" do
	scenario "with project details" do
		project = FactoryGirl.create(:project, name: "Braxton Brewery")
		visit "/"
		click_link "Braxton Brewery"
		expect(page.current_url).to eq(project_url(project))
	end
end
