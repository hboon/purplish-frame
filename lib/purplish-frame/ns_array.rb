class NSArray
  def to_rect
    if PurplishFrame.ios?
      CGRect.new([self[0][0], self[0][1]], [self[1][0], self[1][1]])
    else
      NSRect.new([self[0][0], self[0][1]], [self[1][0], self[1][1]])
    end
  end

  def to_size
    if PurplishFrame.ios?
      CGSize.new(self[0], self[1])
    else
      NSSize.new(self[0], self[1])
    end
  end

  def to_point
    if PurplishFrame.ios?
      CGPoint.new(self[0], self[1])
    else
      NSPoint.new(self[0], self[1])
    end
  end
end

class CGRect
  def to_rect
    self
  end
end

class CGSize
  def to_size
    self
  end
end

class CGPoint
  def to_point
    self
  end
end
