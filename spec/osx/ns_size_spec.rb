class NSSize
  def close?(to, delta)
    width.close?(to.width, delta) && height.close?(to.height, delta)
  end
end

if PurplishFrame.osx?
  describe "Sizes" do
    delta = 0.0001

    it "NSSize scaling" do
      #Careful not to use NSMakeSize(). Somehow, it creates a CGSize instead
      NSSize.new(100, 100).scale_to_fit(NSSize.new(10, 10)).should.close NSSize.new(10, 10), delta
      NSSize.new(200, 100).scale_to_fit(NSSize.new(15, 15)).should.close NSSize.new(15, 7.5), delta
      NSSize.new(100, 100).scale_to_fill(NSSize.new(10, 10)).should.close NSSize.new(10, 10), delta
      NSSize.new(200, 100).scale_to_fill(NSSize.new(15, 15)).should.close NSSize.new(30, 15), delta
      NSSize.new(10, 10).scale_to_fit(NSSize.new(100, 100)).should.close NSSize.new(100, 100), delta
      NSSize.new(10, 5).scale_to_fit(NSSize.new(100, 100)).should.close NSSize.new(100, 50), delta
      NSSize.new(10, 10).scale_to_fill(NSSize.new(100, 100)).should.close NSSize.new(100, 100), delta
      NSSize.new(10, 5).scale_to_fill(NSSize.new(100, 100)).should.close NSSize.new(200, 100), delta

      s = NSSize.new(200, 100)
      s.scale_to_fit!(NSSize.new(15, 15))
      s.should.close NSSize.new(15, 7.5), delta

      s = NSSize.new(10, 5)
      s.scale_to_fill!(NSSize.new(100, 100))
      s.should.close NSSize.new(200, 100), delta
    end
  end
end
