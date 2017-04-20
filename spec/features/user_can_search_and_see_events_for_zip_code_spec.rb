require 'rails_helper'

RSpec.feature "user can search and see events for the zip code" do
  scenario "searches and finds events" do

    visit search_path

    fill_in("q", with: "80202")
    click_on("Find Events")

    expect(current_path).to eq(search_path)

    expect(page).to have_content("135 events for March")
    expect(page).to have_content("start_time")
    expect(page).to have_content("description")
  end
end