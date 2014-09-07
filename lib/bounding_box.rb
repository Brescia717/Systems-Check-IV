class BoundingBox
  attr_reader :left, :right, :top, :bottom, :width, :height

  def initialize(x, y, width, height)
    @left = x
    @right = x + width
    @top = y + height
    @bottom = y
    @width = width
    @height = height
  end

  def contains_point?(x, y)
    if x >= left && x <= right && y >= bottom && y <= top
      return true
    else
      return false
    end
  end
end
