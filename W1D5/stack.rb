class Stack

  def initialize
    @stack = []
  end

  def add(el)
    self.stack << el
    el
  end

  def remove
    self.stack.pop
  end

  def show
    self.stack.dup
  end
end
