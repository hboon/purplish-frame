class NSWindow
  include PurplishFrame::CocoaView

  def bounds
    NSMakeRect(0, 0, width, height)
  end

  def frame=(rect)
    setFrame(rect, display:true)
  end
end
