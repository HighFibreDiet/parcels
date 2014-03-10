class Parcel
  def initialize(length, width, height)
    @length = length
    @width = width
    @height = height
  end

  def volume
    @length * @width * @height
  end

  def cost_to_ship(distance)
    @distance = distance
    self.volume * distance * 0.005
  end

  def distance
    @distance
  end
end
