module PurplishFrame
  module CocoaView
    include View

    def view_frame
      frame
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

    def height=(height)
      f = frame
      f.origin.y -= height - frame.size.height
      f.size.height = height
      self.frame = f
    end

    #def origin_relative_to_superview(v)
      #sup = superview
      #offset = CGPointZero

      #if ([sup isKindOfClass:[UIScrollView class]]) {
      #offset = ((UIScrollView*)sup).contentOffset
      #}

      #if !sup || v == sup
        #return CGPoint.new(left-offset.x, top-offset.y)
      #else
        #d = sup.origin_relative_to_superview(v)
        #return CGPoint.new(left+d.x-offset.x, top+d.y-offset.y)
      #end
    #end

    #def move_origin_relative_to_superview(v)
      #pt = origin_relative_to_superview(v)
      #self.left = pt.x
      #self.top = pt.y
    #end
  end
end
