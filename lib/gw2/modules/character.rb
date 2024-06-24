# frozen_string_literal: true

module Gw2
  module Api
    # achievements.rb
    module Characters
      # Returns the account characters
      def characters(params = {})
        execute_with_params("characters", params)
      end

      def character_backstory(character_id, params = {})
        execute_with_params("characters/#{character_id}/backstory", params)
      end

      def character_buildtabs(character_id, params = {})
        execute_with_params("characters/#{character_id}/buildtabs", params)
      end

      def character_core(character_id, params = {})
        execute_with_params("characters/#{character_id}/core", params)
      end

      def character_crafting(character_id, params = {})
        execute_with_params("characters/#{character_id}/crafting", params)
      end

      def character_equipment(character_id, params = {})
        execute_with_params("characters/#{character_id}/equipment", params)
      end

      def character_equipmenttabs(character_id, params = {})
        execute_with_params("characters/#{character_id}/equipmenttabs", params)
      end

      def character_inventory(character_id, params = {})
        execute_with_params("characters/#{character_id}/inventory", params)
      end

      def character_recipes(character_id, params = {})
        execute_with_params("characters/#{character_id}/recipes", params)
      end

      def character_skills(character_id, params = {})
        execute_with_params("characters/#{character_id}/skills", params)
      end

      def character_specializations(character_id, params = {})
        execute_with_params("characters/#{character_id}/specializations", params)
      end

      def character_active_buildtabs(character_id, params = {})
        execute_with_params("characters/#{character_id}/buildtabs/active", params)
      end

      def character_active_equipmenttabs(character_id, params = {})
        execute_with_params("characters/#{character_id}/equipmenttabs/active", params)
      end

      def character_hero_points(character_id, params = {})
        execute_with_params("characters/#{character_id}/heropoints", params)
      end

      def character_quests(character_id, params = {})
        execute_with_params("characters/#{character_id}/quests", params)
      end

      def character_sab(character_id, params = {})
        execute_with_params("characters/#{character_id}/sab", params)
      end
    end
  end
end
