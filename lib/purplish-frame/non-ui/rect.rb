module PurplishFrame
  module Rect
    def scale(num)
      [[origin.x*num, origin.y*num], [size.width*num, size.height*num]].to_rect
    end

    def scale!(num)
      self.origin = [origin.x*num, origin.y*num]
      self.size = [size.width*num, size.height*num]
      self
    end

    def left
      origin.x
    end

    def left=(x)
      origin.x = x
    end

    def right
      origin.x+size.width
    end

    def right=(right)
      origin.x = right - size.width
    end

    def center_x
      left+size.width/2
    end

    def center_x=(center_x)
      self.left = center_x-size.width/2
    end

    def width
      size.width
    end

    def width=(w)
      size.width = w
    end

    def height
      size.height
    end

    def top_left
      [left, top].to_point
    end

    def top_right
      [right, top].to_point
    end

    def bottom_left
      [left, bottom].to_point
    end

    def bottom_right
      [right, bottom].to_point
    end

    def top_center
      [center_x, top].to_point
    end

    def bottom_center
      [center_x, bottom].to_point
    end

    def left_center
      [left, center_y].to_point
    end

    def right_center
      [right, center_y].to_point
    end
  end
end
