require 'rails_helper'

RSpec.feature "User wants to create a new bike" do
    scenario "they enter data to create a new bike for either demos" do
        bike_name = "Kona Process 134 CR 29"
        bike_image_path = "http://alohamountaincyclery.com/wp-content/uploads/2020/03/process_134_cr_29.jpg" 
        bike_rental = true
        bike_demo = false

        visit '/bikes'
        click_on "Create New Bike"
        fill_in "bike_name", with: bike_name
        fill_in "bike_image_path", with: bike_image_path
        # find(:css, ".rentalcheck").set(true)
        # find(:css, ".democheck").set(false) Come back to these once styling is set
        
        click_on "Create Bike"

        expect(page).to have_content bike_name
        # expect(page).to have_css("img[src\"#{bike_image_path}\"]") find another way to test for this
    end
    
    context "the bike submitted is invalid" do
        scenario "the user should see an error message" do
            bike_image_path = "http://alohamountaincyclery.com/wp-content/uploads/2020/03/process_134_cr_29.jpg" 

            visit bikes_path
            click_on "Create New Bike"
            fill_in "bike_image_path", with: bike_image_path
            click_on "Create Bike"

            expect(page).to have_content "Name can't be blank"
            expect(page).to have_content "prohibited this record from being saved"
        end
    end
end