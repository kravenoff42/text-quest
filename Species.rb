class Species
    def initialize (adjective,singular_noun,plural_noun,language,script,origin,max_age)
        @name = {
            :proper => adjective,
            :singular => singular_noun,
            :plural => plural_noun
        }
        @language = language #TODO: move to Cultures
        @script = script #TODO: move to Cultures
        @origin = origin
        @max_age = max_age
        @attribute_modifiers = Hash.new
        @abilities = Array.new
        @appearence_range = Hash.new
        @cultures = Array.new
    end
end

EntitySpecies = {
    :HUMAN => Species.new("Human","Human","Humans","Common","Toril",120),
    :DWARVEN => Species.new("Dwarven","Dwarf","Dwarves","Dwarvish","Underdeep",400),
    :ELVEN => Species.new("Elven","Elf","Elves","Elvish","Toril",1000),
    :GNOMISH => Species.new("Gnomish","Gnome","Gnomes","Gnomish","Toril",600),
    :DEMONIC => Species.new("Demonic","Demon","Demons","Abyssal","The Abyss",-1),
    :ANGELIC => Species.new("Angelic","Angel","Angels","Celestial","UpperPlanes",-1),
    :DEVA => Species.new("Deva","Deva","Devas","Celestial","UpperPlanes",-1),
    :HALF_ELVEN => Species.new("Half-Elven","Half-Elf","Half-Elves","Common","Toril",200),
    :HALF_ORCISH => Species.new("Half-Orcish","Half-Orc","Half-Orcs","Common","Toril",90),
    :MIND_FLAYER => Species.new("Mind Flayer","Mind Flayer","Mind Flayers","Deep Speech","Underdark",150),
    :BEHOLDER => Species.new("Beholder","Beholder","Beholders","Deep Speech","Underdark",-1),
    :KOBOLD => Species.new("Kobold","Kobold","Kobolds","Draconic","Darastriverthicha",120),
    :TROGLODYTISH => Species.new("Troglodytish","Troglodyte","Troglodytes","Draconic","Underdark",100),
    :LIZARDFOLKISH => Species.new("Lizardfolkish","Lizardfolk","Lizardfolk","Draconic","Faerûn",100),
    :DRAGON => Species.new("Dragon","Dragon","Dragons","Draconic","Abeir-Toril",-1),
    :DRAGONBORN => Species.new("Dragonborn","Dragonborn","Dragonborn","Draconic","Abeir",100),
    :OGRE => Species.new("Ogre","Ogre","Ogres","Giant","Toril",200),
    :GIANT => Species.new("Giant","Giant","Giants","Giant","Elemental Chaos",500),
    :GOBLIN => Species.new("Goblin","Goblin","Goblins","Goblin","Toril",80),
    :HOBGOBLIN => Species.new("Hobgoblin","Hobgoblin","Hobgoblins","Goblin","Toril",80),
    :BUGBEARISH => Species.new("Bugbearish","Bugbear","Bugbears","Goblin","Toril",100),
    :GNOLL => Species.new("Gnoll","Gnoll","Gnolls","Gnoll","Toril",40),
    :HALFLING => Species.new("Halfling","Halfling","Halflings","Halfling","Toril",175),
    :DEVILISH => Species.new("Devilish","Devil","Devils","Infernal","The Nine Hells",-1),
    :TIEFLING => Species.new("Tiefling","Tiefling","Tieflings","Infernal","Toril",160),
    :ORCISH => Species.new("Orcish","Orc","Orcs","Orc","Toril",60),
    :ELEMENTAL => Species.new("Elemental","Elemental","Elementals","Primordial","ElementalPlanes",-1),
    :DRYADIC => Species.new("Dryadic","Dryad","Dryads","Sylvan","Feywild",-1),
    :XORNISH => Species.new("Xornish","Xorn","Xorns","Terran","EarthPlane",-1),
    :DROW => Species.new("Drow","Drow","Drow","Undercommon","Underdark",750)
}
TypicalSpeakers={
:Abyssal=> ["Demons", {:tagged_with=>"Chaotic-Evil"}],
:Aquan=> [{:tagged_with=>"Water-based"}],
:Auran=> [{:tagged_with=>"Air-based"}],
:Celestial=> ["Angels", "Devas", {:tagged_with=>"Celestial"}],
:Common=> ["Humans", "Halflings", "Half-Elves", "Half-Orcs"],
:Deep_speech=> ["Mind Flayers", "Beholders"],
:Draconic=> ["Kobolds", "Troglodytes", "Lizardfolk", "Dragons", "Dragonborn"],
:Druidic=> [{:tagged_with=>"Druid"}],
:Dwarvish=> ["Dwarves"],
:Elvish=> ["Elves"],
:Giant=> ["Ogres", "Giants"],
:Gnomish=> ["Gnomes"],
:Goblin=> ["Goblinoids", "Hobgoblins", "Bugbears"],
:Gnoll=> ["Gnolls"],
:Halfling=> ["Halflings"],
:Ignan=> [{:tagged_with=>"Fire-based"}],
:Infernal=> ["Devils", "Tieflings"],
:Orc=> ["Orcs"],
:Primordial=> ["Elementals"],
:Sylvan=> ["Dryads", "Brownies", "Leprechauns", {:tagged_with=>"Fey"}],
:Terran=> ["Xorns", {:tagged_with=>"Earth-based"}],
:Undercommon=> ["Drow", {:tagged_with=>"Underdark"}]
}

TypicalWriters={
:Common=> ["Humans", "Halflings", "Half-Elves", "Half-Orcs", "Gnolls"],
:Infernal=> ["Demons", "Devils", "Tieflings", {:tagged_with=>"Chaotic-Evil"}],
:Elvish=> ["Elves", "Drow", "Dryads", "Brownies", "Leprechauns", {:tagged_with=>["Fey","Underdark","Water-based"]}],
:Celestial=> ["Angels", "Devas", {:tagged_with=>"Celestial"}],
:Draconic=> ["Kobolds", "Troglodytes", "Lizardfolk", "Dragons", "Dragonborn", {:tagged_with=>["Fire-based","Air-based"]}],
:Druidic=> [{:tagged_with=>"Druid"}],
:Dwarvish=> ["Dwarves", "Ogres", "Giants", "Orcs", "Elementals", "Xorns", "Gnomes", "Goblinoids", "Hobgoblins", "Bugbears",{:tagged_with=>"Earth-based"}]
}
