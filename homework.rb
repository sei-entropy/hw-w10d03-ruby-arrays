# question 1 
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

students.map do |arr|
    upper_case_full_names.push("#{arr[:first_name]} #{arr[:last_name]}".upcase)
end
#  puts upper_case_full_names

# question 2

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

users.map{|order| first_order_for_each_user.push(order[:orders])}

#puts first_order_for_each_user

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

people.map do |key| 
    coffee_average_per_person.push(key[:name] ,(key[:transactions][0][:amount]+
            key[:transactions][1][:amount]+ 
            key[:transactions][2][:amount]) / 3 )

end

# puts coffee_average_per_person


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

# p stores[0][:products]
 stores.map  do |prod|
#    puts prod[:products][index][:price]
if prod[:products][0][:price] > prod[:products][1][:price]
most_expensive_products_by_store.push({store_name:prod[:store_name]}, {price:prod[:products][0][:price]},{description:prod[:products][0][:description]})
elsif
    most_expensive_products_by_store.push({store_name:prod[:store_name]}, {price:prod[:products][1][:price]},{description:prod[:products][1][:description]})
end

 end

p most_expensive_products_by_store

