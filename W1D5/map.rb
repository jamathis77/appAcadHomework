class Map

  def initialize
    @map = []
  end

  def assign(key, value)
    pair_index = self.map.index {|pair| pair[0] == key}
    pair_index ? self.map[pair_index[1] = value : self.map.push([key, value])]
    [key, value]
  end

  def lookup(key)
    self.map.each {|pair| return pair[1] if pair[0] == key}
    nil
  end

  def remove(key)
    self.map.reject! {|pair| pair[0] == key}
  end

  def show
    deep_dup(self.map)
  end

  private
  def deep_dup(arr)
    arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el}

end
