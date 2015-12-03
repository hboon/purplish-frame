class NSSize
  include PurplishFrame::CanScaleWidthHeight

  def self.to_native_size(anObject)
    anObject.to_size
  end
end
