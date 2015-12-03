class CGRect
  def close?(to, delta)
    origin.x.close?(to.origin.x, delta) && origin.y.close?(to.origin.y, delta) && size.width.close?(to.size.width, delta) && size.height.close?(to.size.height, delta)
  end
end

describe "Rects" do
  delta = 0.0001

  it "CGRect scaling" do
    CGRectMake(0, 0, 100, 100).scale(10).should.close CGRectMake(0, 0, 1000, 1000), delta
    CGRectMake(10, 20, 100, 100).scale(10).should.close CGRectMake(100, 200, 1000, 1000), delta

    rect = CGRectMake(10, 20, 100, 100)
    rect.scale!(10)
    rect.should.close CGRectMake(100, 200, 1000, 1000), delta
  end

  it "CGRect sides" do
    rect = CGRectMake(10, -20, 100, 100)
    rect.left.should.equal 10
    rect.right.should.equal 110
    rect.top.should.equal -20
    rect.bottom.should.equal 80
    rect.width.should.equal 100
    rect.height.should.equal 100
    rect.center_x.should.equal 60
    rect.center_y.should.equal 30
  end

end
