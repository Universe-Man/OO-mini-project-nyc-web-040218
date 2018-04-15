class Allergen
  attr_accessor :user, :ingredient

  ALL = []

  def initialize(user, ingredient)
    @user = user
    @ingredient = ingredient
    ALL << self
  end

  def self.all
    ALL
  end


#added to use in allergens method in recipe.
  def self.unique_a
    s = Allergen.all.map do |al|
      al.ingredient
    end.uniq
  end

end
