# frozen_string_literal: true

module Gw2
  module Api
    # achievements.rb
    # This module is responsible for methods for querying information about achievements
    module Achievements
      # Returns the achievements
      # @param [Hash] params the options to filter the achievements
      # Valid Parameters
      # - id: [String] the id of the achievement to filter
      # - ids: [String] the ids of the achievements to filter comma seperated
      # - page: [String] the page number to filter
      # - page_size: [String] the page size to filter
      def achievements(params = {})
        execute_with_params("achievements", params)
      end

      # Returns the achievements groups
      # @param [Hash] params the options to filter the achievements
      # Valid Parameters
      # - id: [String] the id of the achievement to filter
      # - ids: [String] the ids of the achievements to filter comma seperated
      # - page: [String] the page number to filter
      # - page_size: [String] the page size to filter
      def achievements_groups(params = {})
        execute_with_params("achievements/groups", params)
      end

      # Returns the achievements categories
      # @param [Hash] params the options to filter the achievements
      # Valid Parameters
      # - id: [String] the id of the achievement to filter
      # - ids: [String] the ids of the achievements to filter comma seperated
      # - page: [String] the page number to filter
      def achievements_categories(params = {})
        execute_with_params("achievements/categories", params)
      end
    end
  end
end
