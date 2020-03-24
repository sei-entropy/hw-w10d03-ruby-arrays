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
    upper_case_full_names = students.map do |fullName| 
    "#{fullName[:first_name].upcase} #{fullName[:last_name].upcase}"
    end
    p upper_case_full_names

#***********************************************************
#***********************************************************

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
users.each do |firstOrder|
    p firstOrder[:orders].first
end

#***********************************************************
#***********************************************************

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
coffee_average_per_person = []
average_per_person = people.map do |name|
    num = 0  
    count = 0
    name[:transactions].each do |i|
        if i[:type] == "COFFEE" 
            num += i[:amount] 
            count += 1
    end    
  end
  num /= count
{
    name: name[:name],
    coffee_average: num
}
end
  coffee_average_per_person.push(average_per_person)
  p coffee_average_per_person

#***********************************************************
#***********************************************************

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

most_expensive_products_by_store = []
most_expensive_products_by_store = stores.map do |store|

   max = 0
   description= ""

   store[:products].each do |item|
     if max < item[:price]
       max = item[:price]
       description = item[:description]
     end
   end
   {
    store_name: store[:store_name],
    most_expensive_product: { description: description,price: max }
  }

 end

 p most_expensive_products_by_store 
