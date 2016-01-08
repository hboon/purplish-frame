class CALayer
  def center
    NSMakePoint(left+width/2, top-height/2)
  end

  def center=(pt)
    #We need to check because pt might be HIPoint or some Boxed type
    pt = pt.to_point if pt.respond_to? :to_point
    f = frame
    f.origin.x = pt.x-width/2
    f.origin.y = pt.y-height/2
    self.frame = f
  end

  def top
    frame.origin.y + frame.size.height
  end

  def top=(y)
    f = frame
    f.origin.y = y - height
    self.frame = f
  end

  def bottom
    frame.origin.y
  end

  def bottom=(bottom)
    f = frame
    f.origin.y = bottom
    self.frame = f
  end

  def height=(height)
    f = frame
    f.origin.y -= height - frame.size.height
    f.size.height = height
    self.frame = f
  end
end
