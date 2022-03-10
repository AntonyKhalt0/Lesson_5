module InstanceCounter
  def self.included(base_class)
    base_class.extend ClassMethods
    base_class.include InstanceMethods
  end

  module ClassMethods
    def instances
      self.instances
    end
  end

  module InstanceMethods
    def register_instance
      self.class.instances += 1 
    end
  end
end
