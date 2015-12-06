class CGSize
  def close?(to, delta)
    width.close?(to.width, delta) && height.close?(to.height, delta)
  end
end

describe "Sizes" do
  delta = 0.0001

  it "CGSize scaling" do
    CGSizeMake(100, 100).scale_to_fit(CGSizeMake(10, 10)).should.close CGSizeMake(10, 10), delta
    CGSizeMake(200, 100).scale_to_fit(CGSizeMake(15, 15)).should.close CGSizeMake(15, 7.5), delta
    CGSizeMake(100, 100).scale_to_fill(CGSizeMake(10, 10)).should.close CGSizeMake(10, 10), delta
    CGSizeMake(200, 100).scale_to_fill(CGSizeMake(15, 15)).should.close CGSizeMake(30, 15), delta
    CGSizeMake(10, 10).scale_to_fit(CGSizeMake(100, 100)).should.close CGSizeMake(100, 100), delta
    CGSizeMake(10, 5).scale_to_fit(CGSizeMake(100, 100)).should.close CGSizeMake(100, 50), delta
    CGSizeMake(10, 10).scale_to_fill(CGSizeMake(100, 100)).should.close CGSizeMake(100, 100), delta
    CGSizeMake(10, 5).scale_to_fill(CGSizeMake(100, 100)).should.close CGSizeMake(200, 100), delta

    s = CGSizeMake(200, 100)
    s.scale_to_fit!(CGSizeMake(15, 15))
    s.should.close CGSizeMake(15, 7.5), delta

    s = CGSizeMake(10, 5)
    s.scale_to_fill!(CGSizeMake(100, 100))
    s.should.close CGSizeMake(200, 100), delta
  end
end
