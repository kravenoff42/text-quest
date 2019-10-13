class Attribute
    attr_accessor :type,:value,:modifier
    @@types = {
        :STR=> "Strength",
        :INT=> "Intelligence",
        :WIS=> "Wisdom",
        :DEX=> "Dexterity",
        :CHA=> "Charisma",
        :CON=> "Constitution"
    }
    def initialize(type, value=nil)
        @type = @@types[type]
        @value = value || d6_drop1
        @modifier = update_modifier
    end
    def update_modifier
        ((@value - 10)/2).ceil
    end
    def mod_string
        "#{"+"if@modifier>=0}#{@modifier}"
    end
end