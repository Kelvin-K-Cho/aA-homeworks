fish_array = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_octopus(array)
  i = 0
  record_word = array[0]
  while i < array.length - 1
    j = i + 1
    while j < array.length
      if array[j].length > array[i].length
        record_word = array[j]
      end
      j += 1
    end
    i += 1
  end
  record_word
end

sluggish_octopus(fish_array)

class Array
  def dominant_octopus(&prc)
    prc ||= Proc.new {|x,y| x.length <=> y.length}
    return self if self.length < 2
    mid = self.length / 2
    left = self.take(mid).dominant_octopus(&prc)
    right = self.drop(mid).dominant_octopus(&prc)
    Array.merge(left,right,&prc)
  end
  private
  def self.merge(left, right, &prc)
    result = []
    until left.empty? || right.empty?
      if prc.call(left.first, right.first) == -1
        result << left.shift
      else
        result << right.shift
      end
    end
    result + left + right
  end
end

fish_array.dominant_octopus[-1]

def clever_octopus(array)
  record = array.first
  array.each do |el|
    if record.length < el.length
      record = el
    end
  end
  record
end

clever_octopus(fish_array)

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(direction, array)
  count = 0
  array.each do |el|
    if el == direction
      return count
    end
    count += 1
  end
  nil
end

slow_dance("up", tiles_array)
slow_dance("right-down", tiles_array)

tiles_hash = {
    "up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}

def fast_dance(direction, hash)
  hash[direction]
end

fast_dance("up", tiles_hash)
fast_dance("right-down", tiles_hash)
