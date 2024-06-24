# frozen_string_literal: true

require "json"

RSpec.describe Gw2::Api::Account do
  before do
    @client = Gw2::Api::Client.new(api_key: ENV.fetch("GW2_API_KEY", nil))
  end

  it "returns account info" do
    response = @client.account
    expect(response.code).to eq("200")
  end

  it "returns account achievements" do
    response = @client.account_achievements
    expect(response.code).to eq("200")
  end

  it "returns filtered achievements" do
    response = @client.account_achievements(ids: "1")
    expect(JSON.parse(response.body).size).to eq(1)
  end

  it "returns account bank" do
    response = @client.account_bank
    expect(response.code).to eq("200")
  end

  it "returns account daily crafting" do
    response = @client.account_daily_crafting
    expect(response.code).to eq("200")
  end

  it "returns account dungeons" do
    response = @client.account_dungeons
    expect(response.code).to eq("200")
  end

  it "returns account dyes" do
    response = @client.account_dyes
    expect(response.code).to eq("200")
  end

  it "returns account finishers" do
    response = @client.account_finishers
    expect(response.code).to eq("200")
  end

  it "returns account gliders" do
    response = @client.account_gliders
    expect(response.code).to eq("200")
  end

  it "returns account home cats" do
    response = @client.account_home_cats
    expect(response.code).to eq("200")
  end

  it "returns account home nodes" do
    response = @client.account_home_nodes
    expect(response.code).to eq("200")
  end

  it "returns account shared inventory" do
    response = @client.account_shared_inventory
    expect(response.code).to eq("200")
  end

  it "returns account jadebots" do
    response = @client.account_jadebots
    expect(response.code).to eq("200")
  end

  it "returns account luck" do
    response = @client.account_luck
    expect(response.code).to eq("200")
  end

  it "returns account legendary armory" do
    response = @client.account_legendary_armory
    expect(response.code).to eq("200")
  end

  it "returns account mail carriers" do
    response = @client.account_mail_carriers
    expect(response.code).to eq("200")
  end

  it "returns account masteries" do
    response = @client.account_masteries
    expect(response.code).to eq("200")
  end

  it "returns account mastery points" do
    response = @client.account_mastery_points
    expect(response.code).to eq("200")
  end

  it "returns account materials" do
    response = @client.account_materials
    expect(response.code).to eq("200")
  end

  it "returns account minis" do
    response = @client.account_minis
    expect(response.code).to eq("200")
  end

  it "returns account mount skins" do
    response = @client.account_mounts_skins
    expect(response.code).to eq("200")
  end

  it "returns account mount types" do
    response = @client.account_mounts_types
    expect(response.code).to eq("200")
  end

  it "returns account novelties" do
    response = @client.account_novelties
    expect(response.code).to eq("200")
  end

  it "returns account outfits" do
    response = @client.account_outfits
    expect(response.code).to eq("200")
  end

  it "returns account progression" do
    response = @client.account_progression
    expect(response.code).to eq("200")
  end

  it "returns account pvp heroes" do
    response = @client.account_pvp_heroes
    expect(response.code).to eq("200")
  end

  it "returns account raids" do
    response = @client.account_raids
    expect(response.code).to eq("200")
  end

  it "returns account recipes" do
    response = @client.account_recipes
    expect(response.code).to eq("200")
  end

  it "returns account skiffs" do
    response = @client.account_skiffs
    expect(response.code).to eq("200")
  end

  it "returns account skins" do
    response = @client.account_skins
    expect(response.code).to eq("200")
  end

  it "returns account titles" do
    response = @client.account_titles
    expect(response.code).to eq("200")
  end

  it "returns account wallet" do
    response = @client.account_wallet
    expect(response.code).to eq("200")
  end

  it "returns account wizard vault daily" do
    response = @client.account_wizardsvault_daily
    expect(response.code).to eq("200")
  end

  it "returns account wizard vault listings" do
    response = @client.account_wizardsvault_listings
    expect(response.code).to eq("200")
  end

  it "returns account wizard vault weeklies" do
    response = @client.account_wizardsvault_weekly
    expect(response.code).to eq("200")
  end

  it "returns account world bosses" do
    response = @client.account_worldbosses
    expect(response.code).to eq("200")
  end

  it "returns commerce transactions" do
    response = @client.commerce_transactions
    expect(response.code).to eq("200")
  end

  it "returns account characters" do
    response = @client.account_characters
    expect(response.code).to eq("200")
  end

  it "returns a subtoken" do
    response = @client.create_subtoken
    expect(response.code).to eq("200")
  end

  it "returns token info" do
    response = @client.token_info
    expect(response.code).to eq("200")
  end

  it "returns 200s for alias functions" do
    expect(@client.account_inventory.code).to eq("200")
    expect(@client.account_mount_skins.code).to eq("200")
    expect(@client.account_mount_types.code).to eq("200")
  end

end
