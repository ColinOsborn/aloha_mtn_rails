require 'rails_helper'

RSpec.feature "User wants to delete a bike" do
    scenario "The bike is no longer part of the fleet" do

        bike = Bike.create(name: "Kona Hei Hei CR/DL", image_file_name: "hei_hei_cr.jpg", rental: true, demo: false)

        visit bikes_path
        click_on "Kona Hei Hei CR/DL"

        click_on "Delete Bike"

        expect(page).to_not have_content bike.name
    end
end