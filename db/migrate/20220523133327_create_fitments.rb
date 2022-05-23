# frozen_string_literal: true

class CreateFitments < ActiveRecord::Migration[5.2]
  def change
    create_table :fitments, &:timestamps
  end
end
