class CALayer
  def center
    CGPointMake(left+width/2, top+height/2)
  end


  def top
    frame.origin.y
  end

  def top=(y)
    f = frame
    f.origin.y = y
    self.frame = f
  end

  def bottom
    frame.origin.y + frame.size.height
  end

  def bottom=(bottom)
    f = frame
    f.origin.y = bottom - f.size.height
    self.frame = f
  end

  def height=(height)
    f = frame
    f.size.height = height
    self.frame = f
  end
end
