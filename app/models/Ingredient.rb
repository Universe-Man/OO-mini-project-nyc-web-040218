class Ingredient
  attr_accessor :name

  ALL = []

  def initialize(name)
    @name = name
    ALL << self
  end

  def self.all
    ALL

  end

  # Ingredient.most_common_allergen should return the ingredient instance that the highest number of users are allergic to

  def self.most_common_allergen
    hash= {}
    r = Allergen.all.map do |value|
      n = value.ingredient #originally we added .name
      if !hash.include?(n)
        hash[n] = 1
      else
        hash[n] += 1
      end
    end

    m = hash.max_by {|key, value| value}

    m[0]
    # ins = Ingredient.all.find do |ingredient|
    #   ingredient.name == m[0]
    # end
  

  end


end
