#Make working with rects, sizes and points more convenient with [RubyMotion](http://rubymotion.com) for iOS & OS X

Usage
---
For iOS & OS X:

```ruby
rect = CGRect.new(10, -20, 100, 100)
rect.left
#10
rect.right
#110
rect.top
#-20
rect.bottom
#80
rect.width
#100
rect.height
#100
rect.center_x
#60
rect.center_y
#30

CGSize.new(100, 100).scale_to_fit(CGSize.new(10, 10))
#CGSize.new(10, 10)

CGSize.new(200, 100).scale_to_fill(CGSize.new(15, 15))
#CGSize.new(30, 15)

CGSize.new(100, 100).scale_to_fit!
CGSize.new(200, 100).scale_to_fill!

CGPoint.new(100, 200)*10
#CGPoint.new(1000, 2000)

CGPoint.new(100, 200)/10
#CGPoint.new(10, 20)

CGRect.new(10, 20, 100, 100).scale(10)
#CGRect.new(100, 200, 1000, 1000)
```

Similar usage for NSSize, NSPoint, NSRect on OS X.

Installation
---
1. Add this to your `Gemfile`: `gem 'purplish-frame'`
2. Run `bundle install`

License
---
BSD. See LICENSE file.

Questions
---
* Email: [hboon@motionobj.com](mailto:hboon@motionobj.com)
* Web: [http://hboon.com/](http://hboon.com/)
* Twitter: [http://twitter.com/hboon](http://twitter.com/hboon)
