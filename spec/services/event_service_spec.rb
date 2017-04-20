require 'rails_helper'

RSpec.describe EventService do
  before(:each) do
    @service = EventService.new
  end

  it "establishes a Faraday connection" do
    expect(@service.connection.class).to eq(Faraday::Connection)
  end

  it "returns a hash of events" do
    events = @service.events

    expect(events["total_items"]).to eq("132")
    # expect(events["events"].first[1][0]["city_name"]).to eq("Denver")
    # # expect(events["events"].first[1][0]["start_time"]).to eq("2017-04-17 20:00:00")
    # expect(events["events"].first[1][0]["description"]).to eq(" Join us for the Ultimate 420 Day Party for the finale of &quot;Welcome To Denver 420&quot;. We have some of the hottest DJ&#39;s in from around the country coming in to rock sets. Hosted by World Of Weed and Gorilla Leaf. No cover for general admission, VIP w/ Gift Bag option available.")
    # expect(events["events"].first[1][0]["title"]).to eq("Singles Event in Denver | Speed Dating | Fancy A Go?")
    # expect(events["events"].first[1][0]["venue_address"]).to eq("http://denver.eventful.com/events/singles-event-denver-speed-dating-fancy-go-/E0-001-101335630-5?utm_source=apis&utm_medium=apim&utm_campaign=apic")
    # expect(events["events"].first[1][0]["venue_name"]).to eq("http://denver.eventful.com/events/singles-event-denver-speed-dating-fancy-go-/E0-001-101335630-5?utm_source=apis&utm_medium=apim&utm_campaign=apic")
  end

end