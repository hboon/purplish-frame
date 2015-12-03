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
  end
end
