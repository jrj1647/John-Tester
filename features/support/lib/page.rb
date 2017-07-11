module Page
  attr_reader :context

  def initialize(context)
    @context = context
  end

  def method_missing(method, *args, &block)
    @context.send(method, *args, &block)
  end
  
end