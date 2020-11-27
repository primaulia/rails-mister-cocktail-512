class Dose < ApplicationRecord
  belongs_to :cocktail # ==> def cocktail ==> 
  belongs_to :ingredient # ==> def ingredient ==> 

  validates :description, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }
end
