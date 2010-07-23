require 'pp'
require 'rubygems' #for ruby less than 1.9

# Colors
begin
  require 'wirble'
  Wirble.init(:history_size => 10000)
  Wirble.colorize
rescue
  warn "wirble not installed"
end

# Prettier objects (eg ActiveRecord)
begin
  require 'hirb'
  Hirb.enable
rescue
  warn "hirb not intalled"
end

class Object
  # Return a list of methods defined locally for a particular object.  Useful
  # for seeing what it does whilst losing all the guff that's implemented
  # by its parents (eg Object).
  def local_methods(obj = self)
    (obj.methods - obj.class.superclass.instance_methods).sort
  end
end