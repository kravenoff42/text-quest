class Player < Entity
    attr_accessor :x,:y,:z

    def initialize (name, species, age, location)
        super(name, species, age, location)
    end

    def inventory
    end

    def stats

    end
end
=begin
{
    name: "Jon",
    species: HUMAN,
    specialty: FIGHTER,
    age: 25,
    height: 5.8,
    weight: 210,
    location: {x:0,y:0,z:0},
    effects:{
        
    },
    health:{
        current: 10,
        max: 20,
        temp: 0,
        temp_max_offset: 0,
        fear_threshold:2
    },
    attributes:{
        dexterity: 10,
        finesse: 10,
        speed: 10,
        strength: 10,
        vitality: 10,
        perception: 10,
        knowledge: 10,
        charm: 10,
        intelligence: 10,
        pose: 10,
        spirit: 10
    },
    traits:{
        evasiveness: Trait.evasiveness( speed, grace, perception),
        metabolism: Trait.metabolism( strength, speed, height, weight ),
        toughness: Trait.toughness( Armor, vitality )
    },
    skills:{
        swimming: Skill.swimming(),
        climbing: Skill.climbing(),
        smithing: Skill.smithing()
    },
    level: 5,
    experience:{
        current_exp: 1234,
        next_level: 2222
    },
    inventory: {
        capacity: 100,
        containers: {

        }
        current_weight: 50
        equipped:{
            head: HELMET,
            neck: {slot1: AMULET_OF_PROTECTION,slot2: nil, slot3: nil},
            chest: BREASTPLATE,
            weapons: {
                main_hand: SWORD,
                off-hand: SHEILD
            },
            hands: {
                main:{},
                right:{
                    thumb:{},
                    index:{},
                    middle:{},
                    ring:{},
                    little:{}
                },
                left:{
                    thumb:{},
                    index:{},
                    middle:{},
                    ring:{},
                    little:{}
                }
            },
            waist: {slot1: {},slot2: nil},
            legs: {
                main:{},
                right:{
                    main:{},
                    foot:{}
                },
                left:{
                    main:{},
                    foot:{}
                }
            }
        }
    }
}

=end