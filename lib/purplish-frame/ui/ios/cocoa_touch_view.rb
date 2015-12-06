module PurplishFrame
  module CocoaTouchView
    include View

    def top
      view_frame.origin.y
    end

    def bottom
      view_frame.origin.y + view_frame.size.height
    end
  end
end
