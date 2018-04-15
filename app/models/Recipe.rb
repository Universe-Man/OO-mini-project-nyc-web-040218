class Recipe
  attr_accessor :name

  ALL = []

  def initialize(name)
    @name = name
    ALL << self
  end

  def self.all
    ALL

  end
# Recipe.most_popular should return the recipe instance with the highest number of users (the recipe that has the most recipe cards)
  def self.most_popular
    # hash = {}
    # RecipeCard.all.select
    # binding.pry
  end
# Recipe#users should return the user instances who have recipe cards with this recipe
  def users
    c = RecipeCard.all.select do |card|
      card.user if card.recipe == self
    end
  end
# Recipe#ingredients should return all of the ingredients in this recipe
  def ingredients
    r = RecipeIngredient.all.select do |name|
      name.recipe == self
    end
    final = r.map do |value|
      value.ingredient
    end
  end

# Recipe#allergens should return all of the ingredients in this recipe that are allergens


  def allergens
    a = Allergen.unique_a
    eh = self.ingredients.select do |rec_i|
      a.each do |allergy|
        rec_i == allergy
      end
    end
  end
    # self.ingredients.map do |s|
    #   if a.include?(s)
    # end
    #   allergies = []
    #   RecipeIngredient.all.select do |name|
    #   if Allergen.all.include?(name)
    #     allergies << name
    #   end
    # end

# Recipe#add_ingredients should take an array of ingredient instances as an argument, and associate each of those ingredients with this recipe
  def add_ingredients(ings)
    new_ings = self.ingredients + ings
    new_ings.uniq
  end

end
