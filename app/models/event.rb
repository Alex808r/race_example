# frozen_string_literal: true

class Event < ApplicationRecord
  belongs_to :race
  belongs_to :event_category
end
