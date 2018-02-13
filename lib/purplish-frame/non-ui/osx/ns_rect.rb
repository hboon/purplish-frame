class NSRect
  include PurplishFrame::Rect

  def top
    origin.y + size.height
  end

  def top=(y)
    origin.y = y - size.height
  end

  def bottom
    origin.y
  end

  def bottom=(bottom)
    origin.y = bottom
  end

  def center_y
    bottom+size.height/2
  end

  def center_y=(center_y)
    self.bottom = center_y-size.height/2
  end

  def height=(h)
    size.height = h
  end

  def inset(dx, dy=dx)
    NSInsetRect(self, dx, dy)
  end
end
