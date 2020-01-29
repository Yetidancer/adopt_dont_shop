require 'rails_helper'

Rspec.describe "shelters index page", type: :feature do
  it "can see all shelters names" do
    shelter_1 = Shelter.create(name: "Shelter 1")

    visit "/shelters"

    expect(page).to have_content(shelter_1.name)
  end
end
