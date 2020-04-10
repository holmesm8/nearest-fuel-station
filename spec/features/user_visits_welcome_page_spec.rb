require 'rails_helper'

describe "user can visit the welcome page" do
  scenario "and see a dropdown menu" do
    visit '/'
    expect(page).to have_content("Nearest Fuel Station")
    expect(page).to have_content("Search For The Nearest Electric Charging Station")
    expect(page).to have_button("Find Nearest Station")
  end

  it "can fin nearest station" do
    visit '/'

    select "Turing", from: :location

    click_button 'Find Nearest Station'

    expect(current_path).to eq("/search")

    expect(page).to have_content("Name: ")
    expect(page).to have_content("Address: ")
    expect(page).to have_content("Fuel Type: ")
    expect(page).to have_content("Access Times: ")
save_and_open_page
    expect(page).to have_content("Distance: ")
    expect(page).to have_content("Travel Time: ")
    expect(page).to have_content("Instructions: ")
  end
end





# As a user
# When I visit "/"
# And I select "Turing" form the start location drop down (Note: Use the existing search form)
# And I click "Find Nearest Station"
# Then I should be on page "/search"
# Then I should see the closest electric fuel station to me.
# For that station I should see
# - Name
# - Address
# - Fuel Type
# - Access Times
# I should also see:
# - the distance of the nearest station (should be 0.1 miles)
# - the travel time from Turing to that fuel station (should be 1 min)
# - The direction instructions to get to that fuel station
#   "Turn left onto Lawrence St Destination will be on the left"
