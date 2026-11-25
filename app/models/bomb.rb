class Bomb < ApplicationRecord
  belongs_to :potion

  validates :name, presence: true
  validates :damage, numericality: { greater_than_or_equel_to: 0 }
  validates :price, numericality: { greater_than_or_equel_to: 0 }
end

