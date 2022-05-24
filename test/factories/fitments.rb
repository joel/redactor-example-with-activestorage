# frozen_string_literal: true

FactoryBot.define do
  factory :fitment do
    trait :with_asset do
      asset do
        Rack::Test::UploadedFile.new(
          Rails.root.join('test', 'fixtures', 'files', 'simple_file.txt')
        )
      end
    end
  end
end
