require "rails_helper"

RSpec.describe "Shop Routes", type: :routing do
  it "routes /shops to the shops controller" do
    expect(get("/shops")).to route_to("shops#index")
  end
end
