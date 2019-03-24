n1 = Neighborhood.where(name: 'Los Pasos', x1: 0, x2: 50, y1: 0, y2: 50).first_or_create
n2 = Neighborhood.where(name: 'Casa Blanca', x1: 0, x2: 50, y1: 50, y2: 100).first_or_create
n3 = Neighborhood.where(name: 'Brooklyn', x1: 50, x2: 100, y1: 0, y2: 50).first_or_create
n4 = Neighborhood.where(name: 'China Town', x1: 50, x2: 100, y1: 50, y2: 100).first_or_create

h1 = House.where(x: 10, y: 15, price: 500000).first_or_create
h2 = House.where(x: 35, y: 75, price: 300000).first_or_create
h3 = House.where(x: 90, y: 25, price: 900000).first_or_create
h4 = House.where(x: 100, y: 100, price: 100000).first_or_create
h5 = House.where(x: 44, y: 66, price: 440000).first_or_create
h6 = House.where(x: 99, y: 25, price: 330000).first_or_create
h7 = House.where(x: 22, y: 2, price: 250000).first_or_create
h8 = House.where(x: 50, y: 44, price: 190000).first_or_create

a1 = Agent.where(name: 'BMG Bank', discount_age: 30, minimum_incoming: 100000, rate: 0.2, neighborhood: n1).first_or_create
a2 = Agent.where(name: 'Crefisa', discount_age: 40, minimum_incoming: 200000, rate: 0.15, neighborhood: n2).first_or_create
a3 = Agent.where(name: 'StateFarm BR', discount_age: 50, minimum_incoming: 300000, rate: 0.12, neighborhood: n3).first_or_create
