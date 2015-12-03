# -*- encoding: utf-8 -*-
require File.expand_path('../lib/purplish-frame/version.rb', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = 'purplish-frame'
  gem.version       = PurplishFrame::VERSION
  gem.licenses      = ['BSD']

  gem.authors  = ['Hwee-Boon Yar']

  gem.description = 'Make working with rects, sizes and points more convenient with RubyMotion for iOS & OS X'
  gem.summary = gem.description
  gem.homepage = 'https://github.com/hboon/purplish-frame'
  gem.email = 'hboon@motionobj.com'

  gem.files       = `git ls-files`.split($\)
  gem.require_paths = ['lib']
  gem.test_files  = gem.files.grep(%r{^spec/})
end
