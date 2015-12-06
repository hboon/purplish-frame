describe "Points" do
  it "CGPoint scaling" do
    (CGPoint.new(100, 200)*10).should.equal CGPoint.new(1000, 2000)
    (CGPoint.new(100, 200)/10).should.equal CGPoint.new(10, 20)
  end
end
