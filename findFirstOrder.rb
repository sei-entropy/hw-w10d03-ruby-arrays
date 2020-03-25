# 2. Find the first order for each user
users = [
  { name: 'Faisal', orders: [ { description: 'a bike'}]},
  {name: 'Huda', orders: [{ description: 'bees'}, { description: 'fishing rod'}]},
  {name: 'Omar', orders: [{ description: 'a MacBook'}, { description: 'The West Wing DVDs'}, { description: 'headphones'}, { description: 'a kitten'}]}
]

first_order_for_each_user = users.collect { |o| o[:orders].first }
puts first_order_for_each_user