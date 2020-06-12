require 'rails_helper'

RSpec.feature "User wants to edit a blog post" do
    scenario "things change and you want to do some edits" do

        blog = Blog.create(title: "Sram's new G3 Drivetrains", body: "The latest GX Eagle 12-speed drivetrain retails for $545 USD and includes an 'Eagle Expansion' cassette with a massive 52-tooth large cog that provides a 520-percent range. It's also a big deal for SRAM.")

        visit blogs_path

        expect(page).to have_content(blog.title)
        click_on blog.title

        expect(current_path).to eq(blog_path(blog))

        click_on "Edit Post"

        fill_in "blog_title", with: "Sram's new GX Drivetrains"

        click_on "Update Post"

        expect(page).to have_content "Sram's new GX Drivetrains"
    end
end