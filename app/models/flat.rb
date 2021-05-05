class Flat < ApplicationRecord
  validates :title, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :stars, presence: true
end
