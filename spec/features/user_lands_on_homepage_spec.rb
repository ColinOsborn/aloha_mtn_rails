require 'rails_helper'

RSpec.feature "User lands on homepage" do 
    scenario "they want to hit the homepage and should see hours and about text" do
        
        visit "/"

        # About shop text
        expect(page).to have_content("Nestled at 6200 feet in the Roaring Fork Valley of central Colorado, Carbondale is home to two incredible trail systems, awesome restaurants and breweries, and the locals choice bike shop, Aloha Mountain Cyclery. It is because of our location, with the miles of singletrack , as well as gravel roads and bike paths, that we are able to build and sell bikes that are perfect for any environment and riding style. As experienced mechanics and fitters, we know that if your bike fits and runs perfect, you will love riding it. That is our job, to insure that you love your bike, and we love our job.")
        # Store hours and phone number
        expect(page).to have_content("Open MON-FRI 10am - 7pm | SAT 9am - 5pm | SUN 10am - 5am | 970-963-2500")
        # Main navigation menu with all key links
        expect(page).to have_content("Bikes Demos Fitting Service Da Crüe Community Contact")
    end
end
