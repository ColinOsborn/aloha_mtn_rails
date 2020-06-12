require 'rails_helper'


RSpec.feature "Listing blogs" do
    scenario "A user views all blogs on index page" do
        blog1 = Blog.create(title: "Sram's new GX Drivetrains", body: "The latest GX Eagle 12-speed drivetrain retails for $545 USD and includes an 'Eagle Expansion' cassette with a massive 52-tooth large cog that provides a 520-percent range. It's also a big deal for SRAM.")
        blog2 = Blog.create(title: "Throwback Rock videp", body: "Summertime Girls from Y&T")

        visit "/blogs"

        expect(page).to have_content(blog1.title)
        expect(page).to have_content(blog1.body)
        expect(page).to have_content(blog2.title)
        expect(page).to have_content(blog2.body)
        
        expect(page).to have_link(blog1.title)
        expect(page).to have_link(blog2.title)
    end
end