module PurplishFrame
  module Point
    def *(aNumber)
      self.class.new(x*aNumber, y*aNumber)
    end

    def /(aNumber)
      self.class.new(x/aNumber, y/aNumber)
    end
  end
end
