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
    expect(events["events"].first[1][0]["url"]).to eq("http://denver.eventful.com/events/singles-event-denver-speed-dating-fancy-go-/E0-001-101335630-5?utm_source=apis&utm_medium=apim&utm_campaign=apic")
    expect(events["events"].first[1][0]["city_name"]).to eq("http://denver.eventful.com/events/singles-event-denver-speed-dating-fancy-go-/E0-001-101335630-5?utm_source=apis&utm_medium=apim&utm_campaign=apic")
    expect(events["events"].first[1][0]["start_time"]).to eq("http://denver.eventful.com/events/singles-event-denver-speed-dating-fancy-go-/E0-001-101335630-5?utm_source=apis&utm_medium=apim&utm_campaign=apic")
    expect(events["events"].first[1][0]["description"]).to eq("http://denver.eventful.com/events/singles-event-denver-speed-dating-fancy-go-/E0-001-101335630-5?utm_source=apis&utm_medium=apim&utm_campaign=apic")
    expect(events["events"].first[1][0]["title"]).to eq("http://denver.eventful.com/events/singles-event-denver-speed-dating-fancy-go-/E0-001-101335630-5?utm_source=apis&utm_medium=apim&utm_campaign=apic")
    expect(events["events"].first[1][0]["venue_address"]).to eq("http://denver.eventful.com/events/singles-event-denver-speed-dating-fancy-go-/E0-001-101335630-5?utm_source=apis&utm_medium=apim&utm_campaign=apic")
    expect(events["events"].first[1][0]["venue_name"]).to eq("http://denver.eventful.com/events/singles-event-denver-speed-dating-fancy-go-/E0-001-101335630-5?utm_source=apis&utm_medium=apim&utm_campaign=apic")
  end

end