class Entity < Item
    attr_accessor :name, :species, :age, :inventory, :location, :size, :description, :hometown

    def initialize(args)
        super({
            "x"=> args["x"] || Random.rand(100),
            "y"=> args["y"] || Random.rand(100),
            "z"=> args["z"] || Random.rand(100),
            "h"=> args["h"] || Random.rand(3..12),
            "w"=> args["w"] || Random.rand(2..3),
            "d"=> args["d"] || Random.rand(2..3),
            "lbs"=> args["lbs"] || Random.rand(300)}
        )

        @name = args["name"] || Faker::Games::ElderScrolls.name
        @species = args["species"] || Faker::Games::ElderScrolls.race
        @specialty = args["specialty"] || ["fighter", "ranger", "thief", "wizard", "cleric"][Random.rand(4).to_i.floor]
        @age = args["age"] || Random.rand(5..100)
        @inventory = {
            :equipped=> {
                :head=> "helmet",
                :chest=> "armor",
                :legs=> "boots",
                :weapons=> {
                    :main_hand=> {
                        :name=> "Sword",
                        :description=> "shiny and strong"
                    }
                }
            }
        }
        @appearence = {
            :hair=> {:color=> Faker::Color.color_name},
            :eyes=> {:color=> Faker::Color.color_name}
        }
        @hometown = args["hometown"] || Faker::Games::ElderScrolls.city
        @description = args["description"] || Faker::Lorem.sentence
        @attributes ={
            # :dexterity=> args.nil? ? args["attributes"]["dexterity"] : Random.rand(3..20),
            # :finesse=> args.nil? ? args["attributes"]["finesse"] : Random.rand(3..20),
            # :speed=> args.nil? ? args["attributes"]["speed"] : Random.rand(3..20),
            # :strength=> args.nil? ? args["attributes"]["strength"] : Random.rand(3..20),
            # :vitality=> args.nil? ? args["attributes"]["vitality"] : Random.rand(3..20),
            # :perception=> args.nil? ? args["attributes"]["perception"] : Random.rand(3..20),
            # :knowledge=> args.nil? ? args["attributes"]["knowledge"] : Random.rand(3..20),
            # :charm=> args.nil? ? args["attributes"]["charm"] : Random.rand(3..20),
            # :intelligence=> args.nil? ? args["attributes"]["intelligence"] : Random.rand(3..20),
            # :pose=> args.nil? ? args["attributes"]["pose"] : Random.rand(3..20),
            # :spirit=> args.nil? ? args["attributes"]["spirit"] : Random.rand(3..20)
            :str=> Attribute.new(:STR),
            :int=> Attribute.new(:INT),
            :wis=> Attribute.new(:WIS),
            :dex=> Attribute.new(:DEX),
            :cha=> Attribute.new(:CHA),
            :con=> Attribute.new(:CON)
        }
        @skills = Hash.new
    end

    def inventory
    end

    def stats
        puts "Entity"
        puts "Name: #{@name}, Age: #{@age}"
        puts "Species: #{@species}, Specialty: #{@specialty}"
        puts "Appearence: #{@appearence}"
        puts "Attributes:"
        puts "  STR: #{@attributes[:str].value}, Mod: #{@attributes[:str].mod_string}"
        puts "  INT: #{@attributes[:int].value}, Mod: #{@attributes[:int].mod_string}"
        puts "  WIS: #{@attributes[:wis].value}, Mod: #{@attributes[:wis].mod_string}"
        puts "  DEX: #{@attributes[:dex].value}, Mod: #{@attributes[:dex].mod_string}"
        puts "  CHA: #{@attributes[:cha].value}, Mod: #{@attributes[:cha].mod_string}"
        puts "  CON: #{@attributes[:con].value}, Mod: #{@attributes[:con].mod_string}"
        # puts "Physical Attributes"
        # puts "DEX: #{@attributes[:dexterity]}, FNS: #{@attributes[:finesse]}, SPD: #{@attributes[:speed]}, STR: #{@attributes[:strength]}, VIT: #{@attributes[:vitality]}"
        # puts "Mental Attributes"
        # puts "PER: #{@attributes[:perception]}, KNO: #{@attributes[:knowledge]}, CHM: #{@attributes[:charm]}, INT: #{@attributes[:intelligence]}, POS: #{@attributes[:pose]}, SPT: #{@attributes[:spirit]}"
        puts "Skills"
        for skill in @skills do
            puts "#{skill.name}: #{skill.value}"
        end
        puts "#{}"
    end

    def story
        puts "#{@name} is #{@age} year-old #{@specialty} #{@species}. They are #{@size.with_inches} tall and weighs #{@size.weight} lbs. #{@name} was born in #{@hometown} and is currently in #{@location.town}."
        puts "Its been said of them that, #{@description}"
        puts "#{@name} wears a #{@invertory[:equipped].head}, "
        puts "it #{@invertory[:equipped][:head][:description]}. "
        puts "They have #{@appearence[:hair][:color]} hair"
        puts "and #{@appearence[:eyes][:color]} eyes."
        puts "They weild a #{@invertory[:equipped][:weapons][:main_hand]}, "
        puts "that is #{@invertory[:equipped][:weapons][:main_hand][:description]}."
    end
    def add_skill
    end
    {
        "name": "Aboleth",
        "size": "Large",
        "type": "aberration",
        "subtype": "",
        "alignment": "lawful evil",
        "armor_class": 17,
        "hit_points": 135,
        "hit_dice": "18d10",
        "speed": "10 ft., swim 40 ft.",
        "strength": 21,
        "dexterity": 9,
        "constitution": 15,
        "intelligence": 18,
        "wisdom": 15,
        "constitution_save": 6,
        "intelligence_save": 8,
        "wisdom_save": 6,
        "history": 12,
        "perception": 10,
        "damage_vulnerabilities": "",
        "damage_resistances": "",
        "damage_immunities": "",
        "condition_immunities": "",
        "senses": "dark-vision 120 ft., passive Perception 20",
        "languages": "Deep Speech, telepathy 120 ft.",
        "challenge_rating": 10,
        "special_abilities": [
          {
            "attack_bonus": 0,
            "desc": "The aboleth can breathe air and water.",
            "name": "Amphibious"
          },
          {
            "attack_bonus": 0,
            "desc": "While underwater, the aboleth is surrounded by transformative mucus. A creature that touches the aboleth or that hits it with a melee attack while within 5 ft. of it must make a DC 14 Constitution saving throw. On a failure, the creature is diseased for 1d4 hours. The diseased creature can breathe only underwater.",
            "name": "Mucous Cloud"
          },
          {
            "attack_bonus": 0,
            "desc": "If a creature communicates telepathically with the aboleth, the aboleth learns the creature's greatest desires if the aboleth can see the creature.",
            "name": "Probing Telepathy"
          }
        ],
        "actions": [
          {
            "attack_bonus": 0,
            "desc": "The aboleth makes three tentacle attacks.",
            "name": "Multi-attack"
          },
          {
            "damage_bonus": 5,
            "damage_dice": "2d6",
            "attack_bonus": 9,
            "desc": "Melee Weapon Attack: +9 to hit, reach 10 ft., one target. Hit: 12 (2d6 + 5) bludgeoning damage. If the target is a creature, it must succeed on a DC 14 Constitution saving throw or become diseased. The disease has no effect for 1 minute and can be removed by any magic that cures disease. After 1 minute, the diseased creature's skin becomes translucent and slimy, the creature can't regain hit points unless it is underwater, and the disease can be removed only by heal or another disease-curing spell of 6th level or higher. When the creature is outside a body of water, it takes 6 (1d12) acid damage every 10 minutes unless moisture is applied to the skin before 10 minutes have passed.",
            "name": "Tentacle"
          },
          {
            "damage_bonus": 5,
            "damage_dice": "3d6",
            "attack_bonus": 9,
            "desc": "Melee Weapon Attack: +9 to hit, reach 10 ft. one target. Hit: 15 (3d6 + 5) bludgeoning damage.",
            "name": "Tail"
          },
          {
            "attack_bonus": 0,
            "desc": "The aboleth targets one creature it can see within 30 ft. of it. The target must succeed on a DC 14 Wisdom saving throw or be magically charmed by the aboleth until the aboleth dies or until it is on a different plane of existence from the target. The charmed target is under the aboleth's control and can't take reactions, and the aboleth and the target can communicate telepathically with each other over any distance.\nWhenever the charmed target takes damage, the target can repeat the saving throw. On a success, the effect ends. No more than once every 24 hours, the target can also repeat the saving throw when it is at least 1 mile away from the aboleth.",
            "name": "Enslave (3/day)"
          }
        ],
        "legendary_actions": [
          {
            "attack_bonus": 0,
            "desc": "The aboleth makes a Wisdom (Perception) check.",
            "name": "Detect"
          },
          {
            "attack_bonus": 0,
            "desc": "The aboleth makes one tail attack.",
            "name": "Tail Swipe"
          },
          {
            "attack_bonus": 0,
            "desc": "One creature charmed by the aboleth takes 10 (3d6) psychic damage, and the aboleth regains hit points equal to the damage the creature takes.",
            "name": "Psychic Drain (Costs 2 Actions)"
          }
        ],
        "url": "http://www.dnd5eapi.co/api/monsters/1"
      }
end