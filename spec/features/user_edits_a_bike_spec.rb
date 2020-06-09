require 'rails_helper'

RSpec.feature "User edits the bike info" do
    scenario "The bike is no longer a demo or rental of info is incorrect" do

        @bike1 = Bike.create(name: "Kona Hei Hei CR/DL", image_path: "https://images.konaworld.com/2020/med/hei_hei_cr_dl.jpg", rental: true, demo: false)

        visit bikes_path

        click_on "Kona Hei Hei CR/DL"
        click_on "Edit Bike"

        fill_in "bike_name", with: "Kona Kula Supreme"

        click_on "Update Bike"

        expect(page).to have_content "Kona Kula Supreme"
    end
end
