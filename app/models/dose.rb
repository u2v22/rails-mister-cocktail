class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail
  validates :description, presence: true
  validates_uniqueness_of :ingredient, :cocktail => [:ingredient_id, :cocktail_id]
end
