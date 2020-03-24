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

upper = students.each do |value|
    up = "#{value[:first_name]} #{value[:last_name]}"
    c= up.upcase
    upper_case_full_names.push(c)
end


# students.map do |name| 
# name.each{|key , value|
#  up =  value.upcase
#  p up
# }
# end



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

first_order_for_each_user =  users.map do |des|
p des[:orders].first
end



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


coffee_average = people.map do |per|
    count = 0
    sum = 0

    per[:transactions].each do |trans|
        if trans[:type] == 'COFFEE'
            count +=1
            sum +=trans[:amount]
        end
    end
    sum/count
    {

    per: per[:name],
    coffee_average: sum
    }
end
coffee_average_per_person.push(coffee_average)
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


most_expensive = stores.map do |store|
    max_exp = 0
    description = ""

    store[:products].each do |pro|
        if max_exp < pro[:price]
           max_exp = pro[:price]
           description = pro[:description]
        end
    end
    {

    pro: store[:store_name],
    most_expensive_product: {description:description , price:max_exp}
    }
end
most_expensive_products_by_store.push(most_expensive)
 p most_expensive_products_by_store