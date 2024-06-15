# frozen_string_literal: true

module Gw2
  module Api
    # achievements.rb
    module Pvp
      # Returns the account characters
      def pvp_stats(params = {})
        execute_with_params("pvp/stats", params)
      end

      # Returns detailed info about recent player games
      def pvp_games(params = {})
        execute_with_params("pvp/games", params)
      end

      # Returns the best and current standing of a player in sPVP
      def pvp_standings(params = {})
        execute_with_params("pvp/standings", params)
      end
    end
  end
end
