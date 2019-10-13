class Vector
    attr_accessor :x,:y,:z

    def initialize(x,y,z)
        @x = x
        @y = y
        @z = z
    end
end

class Location
    # attr_accessor :reality, :galaxy, :system, :planet, :continent, :country, :province, :town, :street, :building, :floor, :room
    attr_accessor :coords, :town

    def initialize(x,y,z)
        @coords = Vector.new( x,y,z)
        # @reality = reality
        # @galaxy = galaxy
        # @system = system
        # @planet = planet
        # @continent = continent
        # @country = country
        # @region = region
        # @province = province
        @town = Faker::Games::ElderScrolls.city #town
        # @street = street
        # @building = building
        # @floor = floor
        # @room = room
    end
    def x
        @coords.x
    end
    def y
        @coords.y
    end
    def z
        @coords.z
    end
end

class Size
    @@size_categories = {
        :tiny=>{>3ft,>1m},
        :small=>{3-5ft,1-2m},
        :regular=>{5-7ft,2-2.5m},
        :large=>{7-10ft,2.5-3.5m},
        :gigantic=>{10-18ft,3.5-6m}
        :titanic->{18-25ft,6-8m},
        :titanic=>{25-36ft,8-12m},
        :titanic=>{36-50ft,12-16m},
        :planetary=>{50-100ft,16-30m},
        :planetary=>{100-200ft,30-60m},
        :planetary=>{200-300ft,60-120m},
        :planetary=>{300-600ft,120-240m}

    }
    attr_accessor :height,:width,:depth,:weight

    def initialize(height,width,depth,weight)
        @height = height
        @width = width
        @depth = depth
        @weight = weight
    end
    def with_inches
        feet = @height.floor
        inches = ((@height - feet)*12).round
        return "#{feet}\' #{inches}\""
    end
end

class Appearence
    def initialize(mainColor, accentColor )
    end
end

class EntityAppearence < Appearence
    def initialize(size, hair, eyes, skin, build, ears, nose, voice, demeanor )
    end
end

class Color
    attr_accessor :red,:green,:blue,:alpha
    def initialize(red,green,blue,alpha=1)
        @red = red
        @blue = blue
        @green = green
        @alpha = alpha
    end
    def hue
    end
    def brightness
    end
    def saturation
    end
    def to_hex
        r = @red.to_s(16)
        g = @green.to_s(16)
        b = @blue.to_s(16)
        "##{r}#{g}#{b}"
    end
    def name
    end
    def description
    end
end