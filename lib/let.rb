module Let
  def self.included(klass)
    klass.extend ClassMethods
  end
  
  module ClassMethods
    def let(var,&block)
      name = "@#{var}"
      self.class_eval do
        define_method(var) do
          if instance_variable_defined?(name)
            instance_variable_get(name)
          else
            val = self.instance_eval(&block)
            instance_variable_set(name,val)
          end
        end
      end
    end
  end
end
