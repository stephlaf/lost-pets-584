class Pet < ApplicationRecord
  SPECIES = %w[bird dog hamster kangaroo snake]

  validates :name, :address, presence: true
  validates :species, inclusion: { in: SPECIES }
end
