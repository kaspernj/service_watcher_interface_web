class Plugin < ActiveRecord::Base
  validates_presence_of :name
  
  def parameters
    plugin_class.paras
  end
  
  def plugin_class
    ServiceWatcherPlugin.const_get(name)
  end
end
