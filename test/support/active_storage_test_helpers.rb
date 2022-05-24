# frozen_string_literal: true

module ActiveStorageTestHelpers
  extend ActiveSupport::Concern

  def remove_uploaded_files
    FileUtils.rm_rf(Rails.root.join("storage_test"))
  end
end

ActiveSupport::TestCase.include(ActiveStorageTestHelpers)
