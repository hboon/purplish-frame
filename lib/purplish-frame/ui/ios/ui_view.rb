class UIView
  include PurplishFrame::CocoaTouchView

  def view_frame
    frame
  end

  def top=(y)
    f = frame
    f.origin.y = y
    self.frame = f
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

  def origin_relative_to_superview(v)
    sup = superview
    offset = CGPointZero

    #if ([sup isKindOfClass:[UIScrollView class]]) {
      #offset = ((UIScrollView*)sup).contentOffset
    #}

    if !sup || v == sup
      return CGPoint.new(left-offset.x, top-offset.y)
    else
      d = sup.origin_relative_to_superview(v)
      return CGPoint.new(left+d.x-offset.x, top+d.y-offset.y)
    end
  end

  def move_origin_relative_to_superview(v)
    pt = origin_relative_to_superview(v)
    self.left = pt.x
    self.top = pt.y
  end
end
