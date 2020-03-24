students = [
  {
      first_name: 'Renad',
      last_name: 'Alobaid'
  },
  {
      first_name: 'Roba',
      last_name: 'Arishi',
  },
  {
      first_name: 'Lama',
      last_name: 'Alaskar',
  }
]
upper_case_full_names = []

upper_case_full_names = students.map do |student|

  "#{student[:first_name].upcase} #{student[:last_name].upcase}"

end

puts upper_case_full_names


users = [
  {
      name: 'Faisal',
      orders: [
          {
              description: 'a bike'
          }
      ]
  },
  {
      name: 'Huda',
      orders: [
          {
              description: 'bees'
          },
          {
              description: 'fishing rod'
          }
      ]
  },
  {
      name: 'Omar',
      orders: [
          {
              description: 'a MacBook'
          },
          {
              description: 'The West Wing DVDs'
          },
          {
              description: 'headphones'
          },
          {
              description: 'a kitten'
          }
      ]
  }
]
first_order_for_each_user = []

first_order_for_each_user = users.map do |user|

  "#{user[:orders].first}"

end

puts first_order_for_each_user

people = [
  {
      name: 'Mohammed',
      transactions: [
          {
              type: 'COFFEE',
              amount: 7.43
          },
          {
              type: 'TACOS',
              amount: 14.65
          },
          {
              type: 'COFFEE',
              amount: 4.43
          }
      ]
  },
  {
      name: 'Maimona',
      transactions: [
          {
              type: 'BIKES',
              amount: 800.00
          },
          {
              type: 'TACOS',
              amount: 14.65
          },
          {
              type: 'COFFEE',
              amount: 4.43
          }
      ]
  },
  {
      name: 'Bedour',
      transactions: [
          {
              type: 'COFFEE',
              amount: 7.43
          },
          {
              type: 'COFFEE',
              amount: 100.00
          },
          {
              type: 'COFFEE',
              amount: 4.43
          }
      ]
  }
]


coffee_average_per_person = []
coffee_average_per_person = people.map do |person|
  coffee_average     = 0
  coffee_count       = 0
  total_transactions = 0
  person[:transactions].each do |transaction|
    if transaction[:type] == "COFFEE"
      total_transactions += transaction[:amount]
      coffee_count += 1
    end
  end
  coffee_average = total_transactions / coffee_count
  {
    name: person[:name],
    coffee_average: coffee_average
  }
end

puts coffee_average_per_person

stores = [
  {
      store_name: 'Jarir',
      products: [
          {
              description: 'Titanium',
              price: 9384.33
          },
          {
              description: 'Gold',
              price: 345.54
          }
      ]
  },
  {
      store_name: 'Tamimi',
      products: [
          {
              description: 'Silver',
              price: 654.44
          },
          {
              description: 'Ruby',
              price: 323.43
          }
      ]
  },
  {
      store_name: 'Souq',
      products: [
          {
              description: 'Opal',
              price: 345.43
          },
          {
              description: 'Sapphire',
              price: 899.33
          }
      ]
  }
]

most_expensive_products_by_store = []
most_expensive_products_by_store = stores.map do |store|

  max_price = 0
  description = ""

  store[:products].each do |product|
    if max_price < product[:price]
      max_price   = product[:price]
      description = product[:description]
    end
  end

  {
    store_name: store[:store_name],
    most_expensive_product: {
    description: description,
    price: max_price
    }
  }
end

puts most_expensive_products_by_store