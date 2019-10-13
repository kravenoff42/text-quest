class Appearence
    @@hair_colors = {
        :white = Color.new(:red = 255, :green = 255, :blue = 255),
        :light_grey = Color.new(:red = 224, :green = 224, :blue = 224),
        :grey = Color.new(:red = 128, :green = 128, :blue = 128),
        :salt_and_pepper = Color.new(:red = 100, :green = 100, :blue = 100),
        :platinum_blonde = Color.new(:red = 255, :green = 255, :blue = 221),
        :blonde = Color.new(:red = 240, :green = 245, :blue = 144),
        :dirty_blonde = Color.new(:red = 224, :green = 224, :blue = 144),
        :sandy_brown = Color.new(:red = 208, :green = 208, :blue = 96),
        :brown = Color.new(:red = 128, :green = 112, :blue = 8),
        :auburn = Color.new(:red = 144, :green = 137, :blue = 0),
        :strawberry_blonde = Color.new(:red = 248, :green = 232, :blue = 212),
        :red = Color.new(:red = 208, :green = 128, :blue = 16),
        :dark_red = Color.new(:red = 140, :green = 48, :blue = 16),
        :dusty_brown = Color.new(:red = 156, :green = 144, :blue = 58),
        :dark_brown = Color.new(:red = 80, :green = 53, :blue = 0),
        :black = Color.new(:red = 0, :green = 0, :blue = 0),
        :green = Color.new(:red = 16, :green = 120, :blue = 16),
        :blue = Color.new(:red = 16, :green = 16, :blue = 112)

        }
    def initialize
        @hair = {
            :length=>{Random.rand(6.0)},
            :color=>
        }
    end
end