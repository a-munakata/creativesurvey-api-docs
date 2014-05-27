ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
#require 'rails/test_help'
require 'test/unit/rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all test_helpers in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration test_helpers
  # -- they do not yet inherit this setting
  fixtures :all

  # Add more helper methods to be used by all test_helpers here...
end
