# frozen_string_literal: true

require 'test_helper'

class FitmentTest < ActiveSupport::TestCase
  test "has an attachment" do
    assert create(:fitment, :with_asset).asset.attached?
  end
end
