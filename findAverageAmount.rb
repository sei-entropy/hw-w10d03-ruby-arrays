# 3. Find the average amount spent on coffee, per transaction, for each person
people = [{name: 'Mohammed', transactions: [ {type: 'COFFEE', amount: 7.43}, { type: 'TACOS', amount: 14.65}, { type: 'COFFEE', amount: 4.43} ]},
		  {name: 'Maimona', transactions: [ {type: 'BIKES', amount: 800.00}, { type: 'TACOS', amount: 14.65}, { type: 'COFFEE', amount: 4.43} ]},
		  {name: 'Bedour', transactions: [ {type: 'COFFEE', amount: 7.43}, { type: 'COFFEE', amount: 100.00}, { type: 'COFFEE', amount: 4.43} ]}]


p coffee_average_per_person = people.collect {|e| amount = 0; coffee_counter = 0
    e[:transactions].collect { |t| if t[:type] == "COFFEE" then amount += t[:amount]; coffee_counter +=1 end}; {name: e[:name], coffee_average: amount.fdiv(coffee_counter)}}