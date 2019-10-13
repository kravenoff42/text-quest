class Skill
    attr_accessor :type,:controlling_attr,:base_value

    def initialize(type,controlling_attr,additional_points)
        @type = SkillType.new(type)
        @controlling_attr = controlling_attr
        @base_value = controlling_attr.modifier
        @current_value = calculate_current(additional_points)
        @additional_points = additional_points
    end
    def calculate_current(additional)
        calc = @base_value
        for val in additional_points do
            calc + val
        end
        return calc
    end
    def update_additional_points(new_array)
        @additional_points = new_array
    end
    def value
        @current_value
    end
end