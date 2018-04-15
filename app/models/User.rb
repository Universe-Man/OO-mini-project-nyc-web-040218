class User
  attr_accessor :name
  ALL = []
  def initialize(name)
    @name = name
    ALL << self
  end
  # User.all should return all of the user instances
  def self.all
    ALL
  end
  # User#recipes should return all of the recipes this user has recipe cards for
  def recipes
    RecipeCard.all.select do |recipe|
      recipe.user == self
    end
  end
  # User#add_recipe_card should accept a recipe instance as an argument, as well as a date and rating, and create a new recipe card for this user and the given recipe
  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self, recipe, date, rating)
  end
    # User#declare_allergen should accept an ingredient instance as an argument, and create a new allergen instance for this user and the given ingredient
    def declare_allergen(ingredient)
      Allergen.new(self,ingredient)
    end
    # User#allergens should return all of the ingredients this user is allergic to
    def allergens
      Allergen.all.select do |allergen|
        #!!!!!!!!!!!!!!!!!!!!!!
        #add code
      end
    end
    # User#top_three_recipes should return the top three highest rated recipes for this user.
    def top_three_recipes
      recipes.sort_by do |user|
        user.rating
      end
    end
# User#most_recent_recipe should return the recipe most recently added to the user's cookbook.
    def most_recent_recipe
      sorted = recipes.sort_by do |recipe|
        recipe.date
      end
      sorted.reverse.first
    end
end
