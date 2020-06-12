require 'rails_helper'

RSpec.feature "User wants to view all bikes that already exist" do
    scenario "they want to see what is in their inventory" do

        @bike1 = Bike.create(name: "Kona Hei Hei CR/DL", image_file_name: "hei_heir_cr.jpg", rental: true, demo: false)
        @bike2 = Bike.create(name: "Kona Process 153 CR/DL",  image_file_name: "hei_hei_cr.jpg", rental: true, demo: false)
        
        visit bikes_path
        expect(page).to have_content(@bike1.name)
        expect(page).to have_content(@bike2.name)
        expect(page).to have_link(@bike1.name)
        expect(page).to have_link(@bike2.name)
    end
end