module PurplishFrame
  module View
    def left
      view_frame.origin.x
    end

    def left=(x)
      f = frame
      f.origin.x = x
      self.frame = f
    end

    def right
      view_frame.origin.x + view_frame.size.width
    end

    def right=(right)
      f = frame
      f.origin.x = right - f.size.width
      self.frame = f
    end

    def center_x
      center.x
    end

    def center_x=(center_x)
      self.center = [center_x, center.y]
    end

    def center_y
      center.y
    end

    def center_y=(center_y)
      self.center = [center.x, center_y]
    end

    def width
      view_frame.size.width
    end

    def width=(width)
      f = frame
      f.size.width = width
      self.frame = f
    end

    def height
      view_frame.size.height
    end

    def size_width_to_fit
      h = height
      sizeToFit
      self.height = h
    end

    def size_width_to_fit_align_right
      x = right
      size_width_to_fit
      self.right = x
    end

    def size_width_to_fit_max(f)
      size_width_to_fit
      self.width = f if width > f
    end

    def size_width_to_fit_min(f)
      size_width_to_fit
      self.width = f if width < f
    end

    def size_height_to_fit
      w = width
      #Otherwise it doesn't expand short UILabel when it's too short to fit longer text
      self.height = 1000
      sizeToFit
      self.width = w
    end

    def size_height_to_fit_align_bottom
      y = bottom
      size_height_to_fit
      self.bottom = y
    end

    def size_height_to_fit_max(f)
      size_height_to_fit
      self.height = f if height > f
    end

    def size_height_to_fit_min(f)
      size_height_to_fit
      self.height = f if height < f
    end

    def inset!(dx, dy)
      self.frame = frame.inset(dx, dy)
    end
  end
end
