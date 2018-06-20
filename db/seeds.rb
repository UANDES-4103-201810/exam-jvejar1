# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Crust

Crust.create(name:"thin",price:1000)
Crust.create(name:"regular",price:3000)
#Ingredients
ings=["pepperoni","tomato","olives","onion","ham","mozzarella"]
ingredients=[]
ings.each do |ing|
  i=Ingredient.create(name:ing)
  ingredients<<i
end

#Recipes
r1=Recipe.create(price:10000)
r1.ingredients=ingredients
r2=Recipe.create(price:12000)
r2.ingredients=ingredients
r3=Recipe.create(price:15000)
r3.ingredients=ingredients

#Pizzas
p1=Pizza.create(name:"Pizza 1",recipe_id:r1.id,crust_id:1)
p1_=Pizza.create(name:"Pizza 1",recipe_id:r1.id,crust_id:2)
p2=Pizza.create(name:"Pizza 2",recipe_id:r2.id,crust_id:1)
p3=Pizza.create(name:"Pizza 3",recipe_id:r3.id,crust_id:1)

