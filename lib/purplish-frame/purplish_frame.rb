module PurplishFrame
  module_function

  def osx?
    Kernel.const_defined?(:NSApplication)
  end

  def ios?
    Kernel.const_defined?(:UIApplication)
  end
end
