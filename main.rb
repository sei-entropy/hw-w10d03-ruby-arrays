# 1. Return an array of each Student's full name, upper-cased
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
# Create New Array With First and Last Names Captilaized
upper_case_full_names = students.map do |student|
    {
        first_name: student[:first_name].upcase,
        last_name: student[:last_name].upcase
    }
end
# Print Full Names of Students
upper_case_full_names.each { |student| puts "#{student[:first_name]} #{student[:last_name]}"}

# 2. Find the first order for each user
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
# Creating an array that contains each user's first order.
first_order_for_each_user = users.map { |user| user[:orders].first }
# Printing the array of orders
puts first_order_for_each_user

# 3. Find the average amount spent on coffee, per transaction, for each person
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
  # Calculate the average amount spent on coffee by each person and save the result in a new array
  coffee_average_per_person = people.map do |person|
    # Select only the transactions that have the type "COFFEE"
    coffee_transactions = person[:transactions].select { |transaction| transaction[:type] == "COFFEE" }

    # Calculate the average spending on coffe by first summing the amount of transactions and divide by the array length
    avg_amount_spent_on_coffee = coffee_transactions.map { |transaction| transaction[:amount] }.sum / coffee_transactions.length

    # Return the person name and their avg spent to the new array
    { name: person[:name], coffee_average: avg_amount_spent_on_coffee }
  end

  # Print the new array
  puts coffee_average_per_person

# 4. Find the most expensive product for each store, with the store name:
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
  
  most_expensive_products_by_store = stores.map do |store|
    # Get the hash of the most expensive product in the current store
    most_expensive_product = store[:products].max_by { |product| product[:price] }

    # Return a hash of the store name and its most expensive product to the new array
    { store_name: store[:store_name], most_expensive_product: most_expensive_product }
  end
  puts most_expensive_products_by_store