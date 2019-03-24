class Agent < ApplicationRecord
  belongs_to :neighborhood

  scope :accept_income, -> (income) { where('? >= minimum_incoming',income) }

  def age_discount?(age)
    age.to_i >= discount_age
  end

  def neighborhood_discount?(neighborhood)
    neighborhood.to_i == neighborhood_id
  end
end
