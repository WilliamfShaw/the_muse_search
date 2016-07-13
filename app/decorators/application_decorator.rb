class ApplicationDecorator < SimpleDelegator
  def self.to_proc
   ->(obj) { decorate(obj) }
 end

 def self.decorate(obj)
   new(obj)
 end
end
