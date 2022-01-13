# frozen_string_literal: true

class Race < ApplicationRecord
  validates :name, :place, :date, presence: true
end
