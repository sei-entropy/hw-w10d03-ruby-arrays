## 1. Return an array of each Students full name, upper-cased

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
    "#{name[:first_name].upcase} #{name[:last_name].upcase}"
  end

#   p upper_case_full_names

## Answer: RENAD ALOBAID, ROBA ARISHI, LAMA ALASKAR


##---------------------------------------------------

##  2. Find the first order for each user

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

first_order_for_each_user = users.map do |num|
     "#{num[:orders].first}"
end

# p first_order_for_each_user


## Answer: 
# {:description=>"a bike"}
# {:description=>"bees"}
# {:description=>"a MacBook"}

