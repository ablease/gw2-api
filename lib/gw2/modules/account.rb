# frozen_string_literal: true

module Gw2
  module Api
    # achievements.rb
    module Account
      # Returns the account information
      def account
        execute_request("account")
      end

      # Returns the account achievements
      # @param [Hash] params the options to filter the achievements
      # Valid Parameters
      # - id: [String] the id of the achievement to filter
      # - ids: [String] the ids of the achievements to filter comma seperated
      # - page: [String] the page number to filter
      # - page_size: [String] the page size to filter
      def account_achievements(params = {})
        execute_with_params("account/achievements", params)
      end

      # Returns the account bank
      # Empty slots are represented by null
      # Slot is indicated by the index of the array
      def account_bank
        request_string = "account/bank"

        execute_request(request_string)
      end

      # Returns the account daily crafting
      def account_daily_crafting
        execute_request("account/dailycrafting")
      end

      # Returns the daily dungeons for the account
      def account_dungeons
        execute_request("account/dungeons")
      end

      # Returns the dye ids unlocked on the account
      def account_dyes
        execute_request("account/dyes")
      end

      # Returns the finisher ids unlocked on the account
      def account_finishers
        execute_request("account/finishers")
      end

      # Returns the glider IDs unlocked on the account
      def account_gliders
        execute_request("account/gliders")
      end

      # Returns the cat unlocks for the home instance on the account
      def account_home_cats
        execute_request("account/home/cats")
      end

      # Returns the nodes unlocked for the home instance on the account
      def account_home_nodes
        execute_request("account/home/nodes")
      end

      # Alias to account_shared_inventory
      def account_inventory
        account_shared_inventory
      end

      # Returns the shared inventory slots for the account
      # Empty slots are represented by null
      # Slot is indicated by the index of the array
      def account_shared_inventory
        execute_request("account/inventory")
      end

      # Returns the account jadebot skin id unlocks
      def account_jadebots
        execute_request("account/jadebots")
      end

      # Returns the account luck
      def account_luck
        execute_request("account/luck")
      end

      # Returns the account legendary armory unlocks
      def account_legendary_armory
        execute_request("account/legendaryarmory")
      end

      # Returns the mail carrier ids unlocked on the account
      def account_mail_carriers
        execute_request("account/mailcarriers")
      end

      # Returns the masteries unlocked on the account
      def account_masteries
        execute_request("account/masteries")
      end

      # Returns the mastery points earned / spent on the account
      def account_mastery_points
        execute_request("account/mastery/points")
      end

      # Returns the account materials
      # Array index indicates the slot
      # Empty slots are represented by a count of 0
      # @param [Hash] params the options to filter the materials
      # Valid Parameters
      # ids: [String] the ids of the materials to filter comma seperated, can optionally use 'all' to get all of them
      def account_materials(params = {})
        execute_with_params("account/materials", params)
      end

      # Returns the account mini ids unlocked
      def account_minis
        execute_request("account/minis")
      end

      # Alias to account_mounts_skins
      def account_mount_skins
        account_mounts_skins
      end

      # Returns the account mount skins unlocked
      def account_mounts_skins
        execute_request("account/mounts/skins")
      end

      # Alias to account_mounts_types
      def account_mount_types
        account_mounts_types
      end

      # Returns the account mount types unlocked
      def account_mounts_types
        execute_request("account/mounts/types")
      end

      # Returns the account novelties unlocked
      def account_novelties
        execute_request("account/novelties")
      end

      # Returns the account outfit ids unlocked
      def account_outfits
        execute_request("account/outfits")
      end

      # Returns the account progression
      def account_progression
        execute_request("account/progression")
      end

      # Returns the account pvp hero ids unlocked
      def account_pvp_heroes
        execute_request("account/pvp/heroes")
      end

      # Returns the account weekly raid progress
      def account_raids
        execute_request("account/raids")
      end

      # Returns the account recipe ids unlocked
      def account_recipes
        execute_request("account/recipes")
      end

      # Returns the account skiff skin unlocked ids
      def account_skiffs
        execute_request("account/skiffs")
      end

      # Returns the account skin ids unlocked
      def account_skins
        execute_request("account/skins")
      end

      # Returns the account title ids unlocked
      def account_titles
        execute_request("account/titles")
      end

      # Returns the account currencies to the amount of currency the account has
      def account_wallet
        execute_request("account/wallet")
      end

      # Returns the wizard vault daily objectives and progress
      def account_wizardsvault_daily
        execute_request("account/wizardsvault/daily")
      end

      # Returns the astral rewards for the account
      def account_wizardsvault_listings
        execute_request("account/wizardsvault/listings")
      end

      # Returnst he wizard vault weekly objectives and progress
      def account_wizardsvault_weekly
        execute_request("account/wizardsvault/weekly")
      end

      # Returns the daily world boss clears for the account
      def account_worldbosses
        execute_request("account/worldbosses")
      end

      # Returns the account trading post transactions
      def commerce_transactions
        execute_request("commerce/transactions")
      end

      # Returns the account characters
      def account_characters(params = {})
        execute_with_params("characters", params)
      end

      # Creates a subtoken of the current api token
      # @param [Hash] params the options to create the subtoken
      # Valid Parameters
      # expires: [String] An ISO-8601 datetime specifing when the generated Subtoken will expire.
      # The token expiry date may not exceed one year from creation.
      # Attempting to specify a longer expiry date will result in the expiry being clamped at one year.
      # permissions: [String] A comma separated list of permissions to grant to the Subtoken.
      # urls: [String] A comma separated list of URLs that the Subtoken will be restricted to.
      def create_subtoken(params = {})
        execute_with_params("createsubtoken", params)
      end

      # Returns info about the supplied token
      def token_info(params = {})
        execute_with_params("tokeninfo", params)
      end
    end
  end
end
