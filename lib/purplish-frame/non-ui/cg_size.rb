class CGSize
  include PurplishFrame::CanScaleWidthHeight

  def self.to_native_size(anObject)
    anObject.to_size
  end

  def square?
    width == height && width > 0
  end
end
