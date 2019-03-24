module ApplicationHelper
  def final_price(agent,age,house,neighborhood)
    house.price * ( 1 + final_rate(agent,age,neighborhood))
  end

  def final_rate(agent,age,neighborhood)
    age_discount = 0.10
    neighborhood_discount = 0.05

    ad = agent.age_discount?(age) ? age_discount : 0
    nd = agent.neighborhood_discount?(neighborhood) ? neighborhood_discount : 0
    return agent.rate * (1 - ad) * (1 - nd)
  end
end
