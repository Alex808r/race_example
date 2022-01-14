# frozen_string_literal: true

class EventCategory < ApplicationRecord
  belongs_to :event_category_group
end
