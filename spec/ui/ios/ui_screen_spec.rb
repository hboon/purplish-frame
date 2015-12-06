if PurplishFrame.ios?
  describe "UIScreen" do
    it "Accessing" do
      screen = UIScreen.mainScreen
      screen.left.should.equal 0
      screen.right.should.equal screen.bounds.size.width
      screen.top.should.equal 0
      screen.bottom.should.equal screen.bounds.size.height
      screen.center_x.should.equal screen.bounds.size.width/2
      screen.center_y.should.equal screen.bounds.size.height/2
      screen.width.should.equal screen.bounds.size.width
      screen.height.should.equal screen.bounds.size.height
    end
  end
end
