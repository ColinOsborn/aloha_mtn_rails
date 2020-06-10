require 'rails_helper'

RSpec.feature "User lands on homepage" do 
    scenario "they want to hit the homepage" do
        
        visit "/"

    end
end
