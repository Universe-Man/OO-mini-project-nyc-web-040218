require_relative '../config/environment.rb'




roger = User.new("Roger")
ian = User.new("Ian")
humzah = User.new("Humzah")
ben = User.new("Ben")
joe = User.new("Joe")
mary = User.new("Mary")

applePie = Recipe.new("Apple Pie")
pizza = Recipe.new("Pizza")
filet = Recipe.new("Filet Mignon")
soda = Recipe.new("Soda")


rc1 = RecipeCard.new(roger, filet, "041018", 3)
rc2 = RecipeCard.new(ian, applePie,"041018", 5)
rc3 = RecipeCard.new(roger, pizza,"041018", 1)
rc4 = RecipeCard.new(roger, soda, "041018", 3)
carrot = Ingredient.new("Carrot")
tomato = Ingredient.new("Tomato")
rice = Ingredient.new("Rice")
tofu = Ingredient.new("Tofu")
sugar = Ingredient.new("Sugar")

humzah.declare_allergen(sugar)
ben.declare_allergen(tofu)
ian.declare_allergen(tofu)
roger.declare_allergen(tofu)
mary.declare_allergen(rice)
ben.declare_allergen(rice)
roger.declare_allergen(tomato)

ings = [carrot, tomato, rice, tofu]

ri1  = RecipeIngredient.new(pizza, tomato)
ri2  = RecipeIngredient.new(pizza, sugar)
ri3  = RecipeIngredient.new(pizza, rice)
# ri4  = RecipeIngredient.new(pizza, tofu)
ri5 = RecipeIngredient.new(filet, carrot)

Ingredient.most_common_allergen

# pizza.allergens
# pizza.users
# roger.recipes
# pizza.ingredients
# # pizza.unique_allergen
 pizza.add_ingredients(ings)

# binding.pry

puts "hello"
