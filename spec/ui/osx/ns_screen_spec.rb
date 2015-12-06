if PurplishFrame.osx?
  describe "NSScreen" do
    it "Accessing" do
      screen = NSScreen.mainScreen
      screen.left.should.equal screen.frame.origin.x
      screen.right.should.equal screen.frame.size.width
      screen.top.should.equal (screen.frame.origin.y+screen.frame.size.height)
      screen.bottom.should.equal screen.frame.origin.y
      screen.center_x.should.equal (screen.frame.origin.x+screen.frame.size.width/2)
      screen.center_y.should.equal (screen.frame.origin.y+screen.frame.size.height/2)
      screen.width.should.equal screen.frame.size.width
      screen.height.should.equal screen.frame.size.height
    end
  end
end
