class Queue

  def initialize
    @queue = []
  end

  def enqueue(el)
    self.queue.unshift(el)
    el
  end

  def dequeue
    self.queue.pop
  end

  def show
    self.queue.dup
  end
end
