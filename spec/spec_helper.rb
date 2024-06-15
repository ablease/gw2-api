# frozen_string_literal: true

require "simplecov"

# NOTE: SimpleCov needs started before app code is required for it to work!
SimpleCov.start do
  add_filter "/spec/"
  add_filter "/bin/"
  add_filter "/sig/"

  add_group "API", "lib/gw2/api.rb"
  add_group "Account", "lib/gw2/modules/account.rb"
  add_group "Achievements", "lib/gw2/modules/achievements.rb"
  add_group "Character", "lib/gw2/modules/character.rb"
  add_group "PVP", "lib/gw2/modules/pvp.rb"
end

require "gw2/api"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
