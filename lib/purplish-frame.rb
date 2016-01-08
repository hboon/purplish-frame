unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

class Motion::Project::App
  def self.osx?
    respond_to?(:template) && template == :osx
  end
end

Motion::Project::App.setup do |app|
  Dir.glob(File.join(File.dirname(__FILE__), 'purplish-frame/**/*.rb')).each do |file|
    exclude = false
    if Motion::Project::App.osx?
      if file.include? '/ios/'
        exclude = true
      end
    else
      if file.include? '/osx/'
        exclude = true
      end
    end
    app.files.unshift(file) unless exclude
  end

  #Just to be safe. Did not work reliably with ENV['experimental_dependency']=1
  core_lib = File.join(File.dirname(__FILE__), 'purplish-frame')
  dependencies = {}
  if Motion::Project::App.osx?
    dependencies["#{core_lib}/ui/osx/ns_view.rb"] = ["#{core_lib}/ui/osx/cocoa_view.rb"]
    dependencies["#{core_lib}/ui/osx/ns_screen.rb"] = ["#{core_lib}/ui/osx/cocoa_view.rb"]
    dependencies["#{core_lib}/ui/osx/ns_window.rb"] = ["#{core_lib}/ui/osx/cocoa_view.rb"]
    dependencies["#{core_lib}/non-ui/osx/ns_size.rb"] = ["#{core_lib}/non-ui/can_scale_width_height.rb"]
    dependencies["#{core_lib}/non-ui/osx/ns_image.rb"] = ["#{core_lib}/non-ui/has_size_width_height.rb"]
  else
    dependencies["#{core_lib}/ui/ios/ui_screen.rb"] = ["#{core_lib}/ui/ios/cocoa_touch_view.rb"]
    dependencies["#{core_lib}/ui/ios/ui_view.rb"] = ["#{core_lib}/ui/ios/cocoa_touch_view.rb"]
    dependencies["#{core_lib}/non-ui/ios/ui_image.rb"] = ["#{core_lib}/non-ui/has_size_width_height.rb"]
  end
  dependencies["#{core_lib}/non-ui/cg_size.rb"] = ["#{core_lib}/non-ui/can_scale_width_height.rb"]
  dependencies["#{core_lib}/ui/ca_layer.rb"] = ["#{core_lib}/ui/view.rb"]
  app.files_dependencies(dependencies)
end
