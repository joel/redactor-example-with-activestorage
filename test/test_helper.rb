# frozen_string_literal: true

ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

require "minitest-spec-context"

Dir[Rails.root.join("test/support/**/*.rb")].sort.each { |f| require f }

module ActiveSupport
  class TestCase
    include FactoryBot::Syntax::Methods

    # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
    fixtures :all

    # called after every single test
    teardown do
      # when controller is using cache it may be a good idea to reset it afterwards
      Rails.cache.clear
      remove_uploaded_files
    end

    # Add more helper methods to be used by all tests here...
  end
end
