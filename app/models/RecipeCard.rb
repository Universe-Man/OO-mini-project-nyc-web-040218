class RecipeCard
  attr_accessor :user, :recipe, :date, :rating

  ALL = []

  def initialize(user, recipe, date, rating = nil)
    @user = user
    @recipe = recipe
    @rating = rating
    @date = date
    ALL << self
  end

  def self.all
    ALL

  end

end
