require 'rails_helper'

RSpec.describe "pets index page", type: :feature do
  context "as a visitor" do
    it "can see all pets names" do
      pet_1 = Pet.create(name: "Fido")

      visit "/pets"

      expect(page).to have_content(pet_1.name)
      # expect(page).to have_link("New Shelter", :href=>"/shelters/new")
    end
  end
end
