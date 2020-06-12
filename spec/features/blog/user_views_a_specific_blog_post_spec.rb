require 'rails_helper'


RSpec.feature "Showing an article" do
    scenario "A user wants to view a specfic article" do
        
        blog1 = Blog.create(title: "Sram's new GX Drivetrains", body: "The latest GX Eagle 12-speed drivetrain retails for $545 USD and includes an 'Eagle Expansion' cassette with a massive 52-tooth large cog that provides a 520-percent range. It's also a big deal for SRAM.")
        blog2 = Blog.create(title: "Throwback Rock videp", body: "Summertime Girls from Y&T")
        
        visit "/blogs"
        
        expect(page).to have_content(blog1.title)
        expect(page).to have_content(blog1.body)
        expect(page).to have_content(blog2.title)
        expect(page).to have_content(blog2.body)
        
        expect(page).to have_link(blog1.title)
        expect(page).to have_link(blog2.title)
        
        click_link blog1.title
        
        expect(page).to have_content(blog1.title)
        expect(page).to have_content(blog1.body)
        expect(current_path).to eq(blog_path(blog1))
    end
end