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
students.map { |name|  upper_case_full_names.push(name[:"first_name"].upcase +  name[:"last_name"].upcase) }
p upper_case_full_names
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
users.map do |order|
  first_order_for_each_user.push(order[:orders][0])
end
p first_order_for_each_user



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


people.each do |person|
  total = 0
  count = 0
  person[:transactions].each do |transaction|
    if transaction[:type] == "COFFEE"
      total += transaction[:amount]
      count += 1
    end
  end
  coffee_average_per_person.push({name: person[:name], coffe_average: total / count})
end
p coffee_average_per_person



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
stores.each do |store|
  price = 0
  desc = ""
  store[:products].each do |product|
    if product[:price] > price
      price = product[:price]
      desc = product[:description]
    end
  end
  most_expensive_products_by_store.push({store_name: store[:store_name], most_expensive_product: {description: desc, price: price}})
end
p most_expensive_products_by_store