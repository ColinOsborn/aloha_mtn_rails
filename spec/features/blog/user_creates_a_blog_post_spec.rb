require 'rails_helper'

RSpec.feature "Creating blog posts" do
    scenario "A user creates a new blog post" do
        
        visit "/blogs"
        click_link "New Blog Post"

        fill_in "Title", with: "Test Blog"
        fill_in "Body", with: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam imperdiet eu dui vel porta. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla rhoncus est diam. Pellentesque suscipit leo interdum condimentum hendrerit."

        click_button "Create Post"
        expect(page).to have_content("Post has been created!")
        # expect(page.current_path).to eq(blogs_path)
    end

    scenario "A user tries to create an invalid article" do
        visit "/blogs"
        click_link "New Blog Post"

        fill_in "Title", with: ""
        fill_in "Body", with: ""

        click_button "Create Post"

        expect(page).to have_content("A failure has occured. Blog Post has not been created")
        expect(page).to have_content("Title can't be blank")
        expect(page).to have_content("Body can't be blank")
    end
end