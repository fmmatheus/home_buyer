class House < ApplicationRecord
  scope :houses_from, -> (neighborhood) {where("x >= ? and x <= ? and y >= ? and y <= ?",
    neighborhood.x1, neighborhood.x2, neighborhood.y1, neighborhood.y2)}
end
