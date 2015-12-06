class UIScreen
  include PurplishFrame::CocoaTouchView

  def view_frame
    bounds
  end

  def center
    CGPointMake(left+width/2, top+height/2)
  end
end
