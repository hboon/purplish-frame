if PurplishFrame.osx?
  class CGRect
    def close?(to, delta)
      origin.x.close?(to.origin.x, delta) && origin.y.close?(to.origin.y, delta) && size.width.close?(to.size.width, delta) && size.height.close?(to.size.height, delta)
    end
  end

  describe "NSView" do
    delta = 0.0001
    before do
      @v = NSView.alloc.initWithFrame([[10, 20], [100, 200]])
    end

    it "Accessing" do
      @v.left.should.equal 10
      @v.right.should.equal 110
      @v.top.should.equal 220
      @v.bottom.should.equal 20
      @v.center_x.should.equal 60
      @v.center_y.should.equal 120
      @v.width.should.equal 100
      @v.height.should.equal 200
    end

    it "Insets" do
      #Returns CGRect!
      @v.inset!(10, 10)
      @v.frame.should.close CGRectMake(20, 30, 80, 180), delta
    end

    it "Insets" do
      #Returns CGRect!
      @v.inset!(5, 20)
      @v.frame.should.close CGRectMake(15, 40, 90, 160), delta
    end

    it "Insets" do
      #Returns CGRect!
      @v.inset!(-5, -20)
      @v.frame.should.close CGRectMake(5, 0, 110, 240), delta
    end
  end
end
