require_relative 'bounding_box'

class BoundingArea
  attr_reader :boxes

  def initialize(boxes)
    @boxes = boxes
  end

  def contains_point?(x, y)
    contains_point = false

    boxes.each do | box |
      if box.contains_point?(x, y)
        contains_point = true
      end
    end
    contains_point
  end
end

