module PurplishFrame
  module Point
    def *(aNumber)
      self.class.new(x*aNumber, y*aNumber)
    end

    def /(aNumber)
      self.class.new(x/aNumber, y/aNumber)
    end

    def close_to?(point, delta=[4, 4])
      point = point.to_point
      delta = delta.to_point
      x.close_to?(point.x, delta.x) && y.close_to?(point.y, delta.y)
    end

    def distance_from(point)
      point = point.to_point
      Math.sqrt((x-point.x)*(x-point.x) + (y-point.y)*(y-point.y))
    end

    def extent(size)
      size = size.to_size
      [[x, y], [size.width, size.height]].to_rect
    end
  end
end
