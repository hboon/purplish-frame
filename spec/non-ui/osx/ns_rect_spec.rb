class NSRect
  def close?(to, delta)
    origin.x.close?(to.origin.x, delta) && origin.y.close?(to.origin.y, delta) && size.width.close?(to.size.width, delta) && size.height.close?(to.size.height, delta)
  end
end

if PurplishFrame.osx?
  describe "Rects" do
    delta = 0.0001

    it "NSRect sides" do
      #Careful not to use NSMakeRect(). Somehow, it creates a CGRect instead
      rect = NSRect.new([10, -20], [100, 100])
      rect.left.should.equal 10
      rect.right.should.equal 110
      rect.top.should.equal 80
      rect.bottom.should.equal -20
      rect.width.should.equal 100
      rect.height.should.equal 100
      rect.center_x.should.equal 60
      rect.center_y.should.equal 30
    end

    it "Insets" do
      #Careful not to use NSMakeRect(). Somehow, it creates a CGRect instead
      rect = NSRect.new([10, -20], [100, 100])
      rect.inset(10, 10).should.close NSRect.new([20, -10], [80, 80]), delta
      rect.inset(5, 20).should.close NSRect.new([15, 0], [90, 60]), delta
      rect.inset(-5, -20).should.close NSRect.new([5, -40], [110, 140]), delta
    end
  end
end
