#Make working with rects, sizes and points more convenient with [RubyMotion](http://rubymotion.com) for iOS & OS X

Usage
---
For iOS & OS X:

```ruby
rect = CGRectMake(10, -20, 100, 100)
rect.left
=> #10
rect.right
=> #110
rect.top
=> #-20
rect.bottom
=> #80
rect.width
=> #100
rect.height
=> #100
rect.center_x
=> #60
rect.center_y
=> #30
```

Similar usage for UIView for iOS and NSView, NSSize, NSPoint, NSRect for OS X.

```ruby
rect = CGRectMake(10, -20, 100, 100)
rect.inset(5, 20)
=> #<CGRect origin=#<CGPoint x=15.0 y=0.0> size=#<CGSize width=90.0 height=60.0>>
```
Similar usage for UIView for iOS and NSView, NSRect for OS X.

```ruby
CGSize.new(100, 100).scale_to_fit(CGSize.new(10, 10))
=> #<CGSize width=10.0 height=10>

CGSize.new(200, 100).scale_to_fill(CGSize.new(15, 15))
=> #<CGSize width=30 height=15>

CGSize.new(100, 100).scale_to_fit!
CGSize.new(200, 100).scale_to_fill!

CGPoint.new(100, 200)*10
=> #<CGPoint x=1000 y=2000>

CGPoint.new(100, 200)/10
=> #<CGPoint x=10 y=20>

CGRectMake(10, 20, 100, 100).scale(10)
=> #<CGRect origin=#<CGPoint x=100.0 y=200.0> size=#<CGSize width=1000.0 height=1000.0>>
```

Similar usage for NSSize, NSPoint, NSRect on OS X.

```ruby
img = UIImage.imageNamed('someImage')
img.width
=> 20.0
img.height
=> 30.0
```

Similar usage for NSImage.

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
