class Region < ApplicationRecord
  has_many :cities, dependent: :destroy
end
