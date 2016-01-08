class CALayer
  include PurplishFrame::View

  def view_frame
    frame
  end

  def center=(pt)
    #We need to check because pt might be HIPoint or some Boxed type
    pt = pt.to_point if pt.respond_to? :to_point
    f = frame
    f.origin.x = pt.x-width/2
    f.origin.y = pt.y-height/2
    self.frame = f
  end
end
