require 'rails_helper'

RSpec.feature "User wants to delete a blog post" do
    scenario "Thye have a blog post that they no longer want" do

        blog = Blog.create(title: "Sram's new G3 Drivetrains", body: "The latest GX Eagle 12-speed drivetrain retails for $545 USD and includes an 'Eagle Expansion' cassette with a massive 52-tooth large cog that provides a 520-percent range. It's also a big deal for SRAM.")

        visit blogs_path

        expect(page).to have_content(blog.title)
        click_on blog.title

        click_on "Delete Post"

        expect(page).to have_no_content(blog.title)
    end
end