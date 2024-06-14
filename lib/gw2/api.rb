# frozen_string_literal: true

require_relative "api/version"
require "net/http"
require_relative "modules/achievements"
require_relative "modules/account"

module Gw2
  module Api
    class Client

      include Gw2::Api::Achievements
      include Gw2::Api::Account

      def initialize(args)
        @api_key = args[:api_key]
        @base_url = "https://api.guildwars2.com/v2"
      end

      # Executes a request with parameters
      # @endpoint [String] the endpoint to request, e.g. achievements
      # @params [Hash] the parameters to filter the request
      # @return [Net::HTTP] the response from the request
      def execute_with_params(endpoint, params)
        output = endpoint

        return execute_request(output) if params.empty?

        output += "?"
        params.each do |key, value|
          output += "#{key.to_s}=#{value}&"
        end
        execute_request(output)
      end

      # Executes a request
      # @endpoint [String] the endpoint to request, e.g. achievements
      # @return [Net::HTTP] the response from the request
      def execute_request(endpoint)
        uri = URI("#{@base_url}/#{endpoint}")
        request = Net::HTTP::Get.new(uri)
        request["Authorization"] = "Bearer #{@api_key}"

        Net::HTTP.start(request.uri.hostname, request.uri.port, use_ssl: true) do |http|
          http.request(request)
        end
      end

    end
  end
end
