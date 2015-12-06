if PurplishFrame.ios?
  describe "UIView" do
    it "Accessing" do
      v = UIView.alloc.initWithFrame([[10, 20], [100, 200]])
      v.left.should.equal 10
      v.right.should.equal 110
      v.top.should.equal 20
      v.bottom.should.equal 220
      v.center_x.should.equal 60
      v.center_y.should.equal 120
      v.width.should.equal 100
      v.height.should.equal 200
    end
  end
end
