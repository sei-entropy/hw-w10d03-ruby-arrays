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
upper_case_full_names = students.map do |student|

   p "#{student[:first_name].upcase} #{student[:last_name].upcase}"
  end

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

first_order_for_each_user = users.map do |user|

   p "#{user[:orders][0]}"

end

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

coffee_average_per_person = []


average_per_person = people.map do |people|
    coffee = 0  
    count = 0
    people[:transactions].each do |transactions|
        if transactions[:type] == "COFFEE" 
            coffee += transactions[:amount] 
            count += 1
    end    
  end
  coffee =coffee/ count
{
    people: people[:name],
    coffee_average: coffee
}
end
  coffee_average_per_person.push(average_per_person)
  p coffee_average_per_person

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
    product:
     { description: description,
       price: max_price }
}
  end
  
  p most_expensive_products_by_store

```

# Bonus

Write an infinite loop that will make you add all the your friends in the students list and after each add will ask if you want to quit the loop (yes/no) if the user choose no print all the students array

### Answer

```

student = []
count =1

p "add a student"
first_student = gets.chomp
student.push(first_student)
while  

p "Do you want to continue ? (y/n)"
input = gets.chomp

if input == "y"
    p "add a student"
    student_name = gets.chomp
    student.push(student_name)

else
    p student
end
end

```
