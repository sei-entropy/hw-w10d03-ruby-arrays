# 4. Find the most expensive product for each store, with the store name:
stores = [ 
	{ store_name: 'Jarir', products: [ 
		{ description: 'Titanium', price: 9384.33 }, 
		{ description: 'Gold', price: 345.54 } ] },
 	{ store_name: 'Tamimi', products: [ 
 		{ description: 'Silver', price: 654.44 },
 		{ description: 'Ruby', price: 323.43 } ] },
 	{ store_name: 'Souq', products: [ 
 		{ description: 'Opal', price: 345.43 },
 		{ description: 'Sapphire', price: 899.33 } ] }
]

p most_expensive_products_by_store = stores.collect { |e| {sotre_name: e[:store_name], most_expensive_product: (e[:products].map {|v| v[:price]}).max}}