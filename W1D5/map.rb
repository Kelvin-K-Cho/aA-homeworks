class Map

  def initialize
    @map = []
  end

  def assign(key, value)
    place = self.lookup(key)
    if place.nil?
      @map << [key,value]
    else
      @map[place][1] = value
    end
  end

  def lookup(key)
    @map.each_with_index do |el, idx|
      if el.first == key
        return idx
      end
    end
    nil
  end

  def remove(key = 0)
    @map.each_with_index do |el, idx|
      if el.first == key
        @map.delete(el)
        return idx
      end
    end
    nil
  end

  def show
    @map
  end

end
