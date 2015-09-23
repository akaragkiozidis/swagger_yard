require 'simplecov'
SimpleCov.start

ENV["RAILS_ENV"] = "development"

require 'bundler/setup'

require 'rspec'
require 'mocha/api'
require 'bourne'

# Load Rails, which loads our swagger_yard
require File.expand_path('../fixtures/dummy/config/application.rb', __FILE__)

require 'rspec/rails'
require 'rspec/its'

# Dir["./spec/support/**/*.rb"].each {|f| require f}

RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.filter_run :focus

  config.mock_with :mocha

  config.order = 'random'
end
