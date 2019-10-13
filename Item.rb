class Item
    attr_accessor :location, :size, :is_static

    def initialize(args)
        @location = Location.new( args["x"], args["y"], args["z"] )
        @size = Size.new( args["h"], args["w"], args["d"], args["lbs"] )
        @is_static = true
    end
    def is_static?
        @is_static
    end
end