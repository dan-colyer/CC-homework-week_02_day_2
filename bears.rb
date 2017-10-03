class Bear
  attr_accessor :name

  def initialize(name)
    @name = name
    @stomach = []
  end

  def bear_takes_fish(fish)
    @stomach << fish
    return @stomach.count
  end

end
