# frozen_string_literal: true

class Note < ApplicationRecord
  attribute :name, :string, default: -> { FFaker::Conference.name }
  validates :name, presence: true
end
