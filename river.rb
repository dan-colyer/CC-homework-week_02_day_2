class River
  attr_accessor :name, :fish_pop

def initialize(name, fish_pop)
  @name = name
  @fish_pop = fish_pop
end

def get_fish()
  return @fish_pop.pop()
end


end
