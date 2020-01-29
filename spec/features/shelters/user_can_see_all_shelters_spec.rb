require 'rails_helper'

RSpec.describe "shelters index page", type: :feature do
  context "as a visitor" do
    it "can see all shelters names" do
      shelter_1 = Shelter.create(name: "Shelter 1")

      visit "/shelters"

      expect(page).to have_content(shelter_1.name)
      expect(page).to have_link("New Shelter", :href=>"/shelters/new")
    end
  end
end
