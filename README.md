# Ruby Map Practice

![ARRAYS](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVWBMdo6Ac3moY3tPnzMsFVnOscOR03SxkZ4sPGGhsWoQrYMPZ9g)

## 1. Return an array of each Student's full name, upper-cased

```rb

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

```

### Answer

```rb
  full_name = students.map do
    |i| "#{i[:first_name].upcase}  #{i[:last_name].upcase }" 
  end 
  upper_case_full_names.push(full_name)
  p upper_case_full_names
```

```rb
RENAD ALOBAID
ROBA ARISHI
LAMA ALASKAR
```

## 2. Find the first order for each user

```rb

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

```

### Answer

```rb
  first_order = users.map do |i| i[:orders][0]
  end
  first_order_for_each_user.push(first_order) 
  p first_order_for_each_user
```

```rb

{:description=>"a bike"}
{:description=>"bees"}
{:description=>"a MacBook"}

```

## 3. Find the average amount spent on coffee, per transaction, for each person

```rb

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

```

### Answer
```rb
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
```

```rb

{:name=>"Faisal", :coffee_average=>5.93}
{:name=>"Maimona", :coffee_average=>4.43}
{:name=>"Bedour", :coffee_average=>37.28666666666667}

```

## 4. Find the most expensive product for each store, with the store name:

```rb

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

```

### Answer

```rb
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

```

```rb

{:store_name=>"Jarir", :most_expensive_product=>{:description=>"Titanium", :price=>9384.33}}
{:store_name=>"Tamimi", :most_expensive_product=>{:description=>"Silver", :price=>654.44}}
{:store_name=>"Souq", :most_expensive_product=>{:description=>"Sapphire", :price=>899.33}}

```

# Bonus

```
Write an infinite loop that will make you add all the your friends in the students list and after each add will ask if you want to quit the loop (yes/no) if the user choose no print all the students array
```
### Answer

```

add a student
Mashael Alsaadan
Do you want to continue ? (y/n)
y
add a student
Afnan Basudan
Do you want to continue ? (y/n)
y
add a student

```
