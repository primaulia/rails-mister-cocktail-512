class Cocktail < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :doses, dependent: :destroy # ==> def doses ==> [ dose, dose ]
  has_many :ingredients, through: :doses # ==> def ingredients ==> [ing, ing]
end
