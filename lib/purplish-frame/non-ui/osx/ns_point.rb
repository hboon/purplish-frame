class NSPoint
  include PurplishFrame::Point

  def to_size
    NSMakeSize(x, y)
  end
end
