class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient



  validates :cocktail_id, uniqueness: { scope: :ingredient_id }
  validates :cocktail, presence: true
  validates :ingredient, presence: true
end
