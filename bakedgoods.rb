
class Cookie
  attr_reader :cookies, :description, :price, :image
  def initialize(cookies, description, price, image)
    @cookies = cookies
    @description = description
    @price = price
    @image = image
  end
end

class Cake
  attr_reader :cakes, :description, :price, :image
  def initialize(cakes, description, price, image)
    @cakes = cakes
    @description = description
    @price = price
    @image = image
  end
end

class Muffin
  attr_reader :muffins, :description, :price, :image
  def initialize(muffins, description, price, image)
    @muffins = muffins
    @description = description
    @price = price
    @image = image
  end
end
#
#
# diffmuffin = Muffin.new('Blueberry Muffin')
# diffmuffin2 = Muffin.new('Double Chocolate Chip Muffin')
# diffmuffin3 = Muffin.new('Apple Cimmamon Muffin')
