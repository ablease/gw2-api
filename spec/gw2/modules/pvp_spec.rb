# frozen_string_literal: true

require "json"

RSpec.describe Gw2::Api::Pvp do
  before do
    @client = Gw2::Api::Client.new(api_key: ENV.fetch("GW2_API_KEY", nil))
  end

  it "returns pvp stats" do
    response = @client.pvp_stats

    expect(response.code).to eq("200")
  end

  it "returns pvp games" do
    response = @client.pvp_games

    expect(response.code).to eq("200")
  end

  it "returns pvp standings" do
    response = @client.pvp_standings

    expect(response.code).to eq("200")
  end
end
