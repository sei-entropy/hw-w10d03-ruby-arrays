## 1. Return an array of each Student's full name, upper-cased ##


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
  
#   upper_case_full_names = []

#   full_name = students.map do
#     |i| "#{i[:first_name].upcase}  #{i[:last_name].upcase }" 
#   end 
#   upper_case_full_names.push(full_name)
#   p upper_case_full_names

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

#   first_order = users.map do |i| i[:orders][0]
#   end
#   first_order_for_each_user.push(first_order) 
#   p first_order_for_each_user


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
    
#   average_per_person = people.map do |name|
#     coffee = 0  
#     counter = 0
#     name[:transactions].each do |i|
#         if i[:type] == "COFFEE" 
#             coffee += i[:amount] 
#              counter += 1
#     end    
#   end
#   coffee /= counter
# {
#     name: name[:name],
#     coffee_average: coffee
# }
# end
#   coffee_average_per_person.push(average_per_person)
#   p coffee_average_per_person


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

  most_expensive_product = stores.map do |i|
    description = ''
    most_expensive = 0
    store_name = i[:store_name]

    i[:products].each do |pr|
        if  most_expensive < pr[:price]

            description = pr[:description]
            most_expensive = pr[:price]
        end
        end
    
     "{:store_name => #{store_name}, {:description=> #{description}, :Price=> #{most_expensive}}}"
    end
  most_expensive_products_by_store.push(most_expensive_product)
  p most_expensive_products_by_store
