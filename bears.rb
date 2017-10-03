class Bear
  attr_accessor :name, :stomach

  def initialize(name)
    @name = name
    @stomach = []
  end

  def take_fish_from_river(river)
    fish = river.get_fish()
    @stomach << fish
  end

  def get_stomach_length
    return @stomach.length
  end

  def bear_roar
    return "Roar"
  end

end
