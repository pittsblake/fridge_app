Fridge.destroy_all

maytag = Fridge.create(location: 'kitchen', brand: 'MayTag', size: 200, has_food: true, has_drink: true)
ge = Fridge.create(location: 'garage', brand: 'GE', size: 200, has_food: true, has_drink: true)

Food.create(fridge_id: maytag.id,name: "Pizza",weight: 10, vegan: true,time_stamp: Date.today) 
Food.create(fridge_id:ge.id, name: "Fruit",weight: 10, vegan: true,time_stamp: Date.today) 

Drink.create(fridge_id: maytag.id, name: "Beer",size: 40, alchoholic: true)
Drink.create(fridge_id:ge.id, name: "milk",size: 40, alchoholic: true)