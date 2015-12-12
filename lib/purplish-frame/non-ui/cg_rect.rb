class CGRect
  include PurplishFrame::Rect

  def top
    origin.y
  end

  def top=(y)
    origin.y = y
  end

  def bottom
    origin.y+size.height
  end

  def bottom=(bottom)
    origin.y = bottom - size.height
  end

  def center_y
    top+size.height/2
  end

  def center_y=(center_y)
    self.top = center_y-size.height/2
  end

  def height=(h)
    size.height = h
  end

  def inset(dx, dy)
    CGRectInset(self, dx, dy)
  end
end
