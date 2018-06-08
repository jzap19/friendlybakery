# each one of these classes should be in its own class
class Cookie
  attr_reader :cookies, :description, :price, :image
  def initialize(cookies, description, price, image)
    @cookies = cookies
    @description = description
    @price = price
    @image = image
  end
end

# each one of these classes should be in its own class
class Cake
  attr_reader :cakes, :description, :price, :image
  def initialize(cakes, description, price, image)
    @cakes = cakes
    @description = description
    @price = price
    @image = image
  end
end

# each one of these classes should be in its own class
class Muffin
  attr_reader :muffins, :description, :price, :image
  def initialize(muffins, description, price, image)
    @muffins = muffins
    @description = description
    @price = price
    @image = image
  end
end

