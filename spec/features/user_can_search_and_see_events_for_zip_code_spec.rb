require 'rails_helper'

RSpec.feature "user can search and see events for the zip code" do
  scenario "searches and finds events" do

    visit search_path

    save_and_open_page
    fill_in("q", with: "80202")
    click_on("Find Events")

    expect(current_path).to eq(search_path)

    expect(page).to have_content("288 events for March")
    expect(page).to have_content("SF Comedy Showcase")
    expect(page).to have_content("2017-03-05 20:00:00")
    expect(page).to have_content("Punch Line - San Francisco")
    expect(page).to have_content("444 Battery Street")
  end
end