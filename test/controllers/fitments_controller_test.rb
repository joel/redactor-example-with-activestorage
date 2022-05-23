# frozen_string_literal: true

require 'test_helper'

class FitmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    post fitments_url
    assert_response :success
  end
end
