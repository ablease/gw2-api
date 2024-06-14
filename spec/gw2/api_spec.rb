# frozen_string_literal: true

RSpec.describe Gw2::Api do
  it "has a version number" do
    expect(Gw2::Api::VERSION).not_to be nil
  end

  it "can make a request" do
    client = Gw2::Api::Client.new(api_key: "F490A600-E0F0-B64B-AC7A-1B789634C71ECC367502-F029-4DFC-B072-29372DD5E309")
    response = client.execute_request("achievements?ids=1840,910")
    expect(response.code).to eq("200")
  end
end
