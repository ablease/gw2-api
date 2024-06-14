# frozen_string_literal: true

require 'json'

RSpec.describe Gw2::Api do
  context "Gw2::Api::Account" do
    before do
      @client = Gw2::Api::Client.new(api_key: ENV["GW2_API_KEY"])
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

    it "returns account outfits" do
      response = @client.account_outfits
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
  end
end
