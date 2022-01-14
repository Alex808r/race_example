# frozen_string_literal: true

class Race < ApplicationRecord
  has_many :events, dependent: :destroy
  validates :name, :place, :date, presence: true
end
