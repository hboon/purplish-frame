if PurplishFrame.osx?
  describe "Points" do
    it "NSPoint scaling" do
      (NSPoint.new(100, 200)*10).should.equal NSPoint.new(1000, 2000)
      (NSPoint.new(100, 200)/10).should.equal NSPoint.new(10, 20)
    end
  end
end
