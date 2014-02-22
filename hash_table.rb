
class NewHash
  attr_reader :hash

  def initialize
    @hash = {}
  end

  def add_key_value_pair(key, val)
    hash.merge!({key => val})
  end

  def get_value(key)
    hash[key]
  end

  def remove_key(key)
    hash.delete(key)
  end
end

class List
  attr_reader :list

  def initialize
    @list = []
  end

  def add_key_value_pair(key, val)
    list << [key, val]
  end

  def get_value(key)
    list[index(key)][1] # [[1], [2], [3]]
  end

  def index(key)
    list.find_index(key)
  end

  def keys
    list.map { |elem| elem[0] } # [1,2,3,4]
  end

  def remove_key(key)
    keys.find(key)
  end

