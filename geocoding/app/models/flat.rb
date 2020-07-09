class Flat < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :address?
end
