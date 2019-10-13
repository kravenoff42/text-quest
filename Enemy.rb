class Enemy < Entity
    attr_accessor :x,:y,:z

    def initialize()
        super(name, species, age, location)
    end
end