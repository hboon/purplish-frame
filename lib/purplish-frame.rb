unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

Motion::Project::App.setup do |app|
  Dir.glob(File.join(File.dirname(__FILE__), 'purplish-frame/**/*.rb')).each do |file|
    app.files.unshift(file)
  end

  #Just to be safe. Did not work reliably with ENV['experimental_dependency']=1
  core_lib = File.join(File.dirname(__FILE__), 'purplish-frame')
  app.files_dependencies({
    "#{core_lib}/ui/ios/ui_screen.rb" => [ "#{core_lib}/ui/ios/cocoa_touch_view.rb"],
    "#{core_lib}/ui/ios/ui_view.rb" => [ "#{core_lib}/ui/ios/cocoa_touch_view.rb"],

    "#{core_lib}/ui/osx/ns_view.rb" => [ "#{core_lib}/ui/osx/cocoa_view.rb"],
    "#{core_lib}/ui/osx/ns_screen.rb" => [ "#{core_lib}/ui/osx/cocoa_view.rb"],
    "#{core_lib}/ui/osx/ns_window.rb" => [ "#{core_lib}/ui/osx/cocoa_view.rb"],

    "#{core_lib}/non-ui/cg_size.rb" => [ "#{core_lib}/non-ui/can_scale_width_height.rb"],
    "#{core_lib}/non-ui/osx/ns_size.rb" => [ "#{core_lib}/non-ui/can_scale_width_height.rb"],

    "#{core_lib}/non-ui/ios/ui_image.rb" => [ "#{core_lib}/non-ui/has_size_width_height.rb"],
    "#{core_lib}/non-ui/osx/ns_image.rb" => [ "#{core_lib}/non-ui/has_size_width_height.rb"],
  })
end
