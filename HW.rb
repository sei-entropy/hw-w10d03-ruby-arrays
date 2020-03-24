
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

 
upper_case_full_names = students.map do |name| 
fullnames =  "#{name[:first_name]} #{name[:last_name]}" 
p fullnames.upcase
end 
 ########################################################################


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
first_order_for_each_user = users.map do |order|  
p order[:orders].first
end
##########################################################################









##############################################################################################################




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
coffee_average_per_person=[]
average_per_person = people.map do |name|
    coffee = 0  
    counter = 0
    name[:transactions].each do |i|
        if i[:type] == "COFFEE" 
            coffee += i[:amount] 
             counter += 1
    end    
  end
  coffee /= counter
{
    name: name[:name],
    coffee_average: coffee
}
end
  coffee_average_per_person.push(average_per_person)
  p coffee_average_per_person


######################################################################################################################



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

 puts most_expensive_products_by_store 










