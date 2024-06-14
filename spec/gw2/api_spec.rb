# frozen_string_literal: true

RSpec.describe Gw2::Api do
  it "has a version number" do
    expect(Gw2::Api::VERSION).not_to be nil
  end

  it "can make a request" do
    client = Gw2::Api::Client.new(api_key: ENV["GW2_API_KEY"])
    response = client.execute_request("achievements?ids=1840,910")
    expect(response.code).to eq("200")
  end
end
