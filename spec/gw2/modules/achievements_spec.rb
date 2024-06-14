# frozen_string_literal: true

require 'json'

RSpec.describe Gw2::Api do
  before do
    @client = Gw2::Api::Client.new(api_key: "F490A600-E0F0-B64B-AC7A-1B789634C71ECC367502-F029-4DFC-B072-29372DD5E309")
  end

  it "returns achievements" do
    response = @client.achievements(ids: "1840,910")
    expect(response.code).to eq("200")
  end

  it "returns daily achievements groups" do
    response = @client.achievements_groups
    expect(response.code).to eq("200")
  end

  it "returns daily achievements categories" do
    response = @client.achievements_categories
    expect(response.code).to eq("200")
  end

end
