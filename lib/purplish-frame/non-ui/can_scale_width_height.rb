module PurplishFrame
  module CanScaleWidthHeight
    def scale_to_fit(s)
      s = self.class.to_native_size(s)
      scaled = if s.width/s.height > width/height
                 [s.height/height * width, s.height]
               else
                 [s.width, s.width/width * height]
               end
      self.class.to_native_size(scaled)
    end

    def scale_to_fill(s)
      s = self.class.to_native_size(s)
      scaled = if s.width/s.height > width/height
                 [s.width, s.width/width * height]
               else
                 [s.height/height * width, s.height]
               end
      self.class.to_native_size(scaled)
    end

    def scale_to_fit!(s)
      size = scale_to_fit(s)
      self.width = size.width
      self.height = size.height
      self
    end

    def scale_to_fill!(s)
      size = scale_to_fill(s)
      self.width = size.width
      self.height = size.height
      self
    end
  end
end
