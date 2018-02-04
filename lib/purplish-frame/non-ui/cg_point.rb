class CGPoint
  include PurplishFrame::Point

  def to_size
    CGSizeMake(x, y)
  end
end
