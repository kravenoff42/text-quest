class SkillType
    @@types = {
        # dexterity
        :lockpicking=>{:name=>"lockpicking",:description=>"The ability to pick a mechanical lock.",:attribute=>"dexterity"},
        :acrobatics=>{:name=>"acrobatics",:description=>"The ability to perform flips, bends, juggling, swinging, hand-stands; in short being an acrobat.",:attribute=>"dexterity"},
        :climbing=>{:name=>"climbing",:description=>"The ability to scale cliffs, buildings, ropes, or other vertical surfaces with enogh texture to grip.",:attribute=>"dexterity"},
        :smithing=>{:name=>"smithing",:description=>"The abililty to forge metals with a hammer and anvil. Including crafting or repairing armor, and large metal weapons.",:attribute=>"dexterity"},
        :riding=>{:name=>"riding",:description=>"The ability to use horses and other beasts of burden for travel or hualing.",:attribute=>"dexterity"},
        :piloting=>{:name=>"piloting",:description=>"The ability to use mechanical vehicles for travel or hauling.",:attribute=>"dexterity"},
        # finesse
        :surgery=>{:name=>"surgery",:description=>"The ability to physically cut open and examine organisms, as well as closing wounds.",:attribute=>"finesse"},
        :fencing=>{:name=>"fencing",:description=>"The ability to defend and attack using rapiers and other finesse based melee weapons.",:attribute=>"finesse"},
        :stealth=>{:name=>"stealth",:description=>"The ability to move silently without attracting attention.",:attribute=>"finesse"},
        :tinkering=>{:name=>"tinkering",:description=>"The ability to smith softer metals and to contruct complex or very small mechanisms. Engraving and gem setting.",:attribute=>"finesse"},
        :fletching=>{:name=>"fletching",:description=>"The ability to craft arrows.",:attribute=>"finesse"},
        # speed
        :swimming=>{:name=>"swimming",:description=>"The ability to traverse bodies of water.",:attribute=>"speed"},
        :inititive=>{:name=>"inititive",:description=>"The ability to act quickly in ecncounters.",:attribute=>"speed"},
        :running=>{:name=>"running",:description=>"The ability to traverse stretches of land.",:attribute=>"speed"},
        :flying=>{:name=>"flying",:description=>"The ability to traverse volumes of air.",:attribute=>"speed"},
        :dodging=>{:name=>"dodging",:description=>"The ability to avoid attacks.",:attribute=>"speed"},
        # strength
        :mining=>{:name=>"mining",:description=>"The ability to find ore and use mining tools to break stone.",:attribute=>"strength"},
        :throwing=>{:name=>"throwing",:description=>"The ability to accuratly throw weapons and other objects.",:attribute=>"strength"},
        :brawling=>{:name=>"brawling",:description=>"The ability to punch, grapple, and fight without weapons.",:attribute=>"strength"},
        :lumberjacking=>{:name=>"lumberjacking",:description=>"The ability to fell tree and hewn lumber.",:attribute=>"strength"},
        # perception
        :archery=>{:name=>"archery",:description=>"The ability to accurately shoot a bow.",:attribute=>"perception"},
        :shooting=>{:name=>"shooting",:description=>"The ability to accurately shoot a rifle, pistol, or crossbow.",:attribute=>"perception"},
        :investigation=>{:name=>"investigation",:description=>"The ability to search an area for an object, person, or clues.",:attribute=>"perception"},
        :navigation=>{:name=>"navigation",:description=>"The ability to successfully find your way over large distances.",:attribute=>"perception"},
        # knowledge
        :spelunking=>{:name=>"spelunking",:description=>"",:attribute=>"knowledge"},
        :forgery=>{:name=>"forgery",:description=>"",:attribute=>"knowledge"},
        :history=>{:name=>"history",:description=>"",:attribute=>"knowledge"},
        :nature=>{:name=>"nature",:description=>"",:attribute=>"knowledge"},
        :carpentry=>{:name=>"carpentry",:description=>"",:attribute=>"knowledge"},
        :arcana=>{:name=>"arcana",:description=>"",:attribute=>"knowledge"},
        :herbology=>{:name=>"herbology",:description=>"",:attribute=>"knowledge"},
        :medicine=>{:name=>"medicine",:description=>"",:attribute=>"knowledge"},
        :chemistry=>{:name=>"chemistry",:description=>"",:attribute=>"knowledge"},
        :botany=>{:name=>"botany",:description=>"",:attribute=>"knowledge"},
        :alchemy=>{:name=>"alchemy",:description=>"",:attribute=>"knowledge"},
        :smelting=>{:name=>"smelting",:description=>"",:attribute=>"knowledge"},
        # charm
        :persuasion=>{:name=>"persuasion",:description=>"",:attribute=>"charm"},
        :deception=>{:name=>"deception",:description=>"",:attribute=>"charm"},
        :speechmaking=>{:name=>"speechmaking",:description=>"",:attribute=>"charm"},
        :performance=>{:name=>"performance",:description=>"",:attribute=>"charm"},
        :animal_handling=>{:name=>"animal handling",:description=>"",:attribute=>"charm"},
        # intelligence
        :hunting=>{:name=>"hunting",:description=>"",:attribute=>"intelligence"},
        :crafting=>{:name=>"crafting",:description=>"",:attribute=>"intelligence"},
        :foraging=>{:name=>"foraging",:description=>"",:attribute=>"intelligence"},
        :tracking=>{:name=>"tracking",:description=>"",:attribute=>"intelligence"},
        :hacking=>{:name=>"hacking",:description=>"",:attribute=>"intelligence"},
        :survival=>{:name=>"survival",:description=>"",:attribute=>"intelligence"},
        :spellcasting=>{:name=>"spellcasting",:description=>"",:attribute=>"intelligence"},
        :insight=>{:name=>"insight",:description=>"",:attribute=>"intelligence"},
        # pose
        :slight_of_hand=>{:name=>"slight of hand",:description=>"",:attribute=>"pose"},
        :intimidation=>{:name=>"intimidation",:description=>"",:attribute=>"pose"},
        :diplomacy=>{:name=>"diplomacy",:description=>"",:attribute=>"pose"},
        # spirit
        :religion=>{:name=>"religion",:description=>"",:attribute=>"spirit"}
        # vitality
    }
    @@short_types = {
        #str
        :athletics=>{:name=>"athletics",:description=>"",:attribute=>"STR"},
        :lifting=>{:name=>"lifting",:description=>"",:attribute=>"STR"},
        :carrying=>{:name=>"carrying",:description=>"",:attribute=>"STR"},
        #dex
        :acrobatics=>{:name=>"acrobatics",:description=>"",:attribute=>"DEX"},
        :stealth=>{:name=>"stealth",:description=>"",:attribute=>"DEX"},
        :slight_of_hand=>{:name=>"slight of hand",:description=>"",:attribute=>"DEX"},
        :inititive=>{:name=>"inititive",:description=>"",:attribute=>"DEX"},
        #int
        :arcana=>{:name=>"arcana",:description=>"",:attribute=>"INT"},
        :history=>{:name=>"history",:description=>"",:attribute=>"INT"},
        :investigation=>{:name=>"investigation",:description=>"",:attribute=>"INT"},
        :nature=>{:name=>"nature",:description=>"",:attribute=>"INT"},
        :religion=>{:name=>"religion",:description=>"",:attribute=>"INT"},
        :spellcasting=>{:name=>"spellcasting",:description=>"",:attribute=>"INT"},
        #wis
        :animal_handling=>{:name=>"animal handling",:description=>"",:attribute=>"WIS"},
        :insight=>{:name=>"insight",:description=>"",:attribute=>"WIS"},
        :medicine=>{:name=>"medicine",:description=>"",:attribute=>"WIS"},
        :perception=>{:name=>"perception",:description=>"",:attribute=>"WIS"},
        :survival=>{:name=>"survival",:description=>"",:attribute=>"WIS"},
        #cha
        :deception=>{:name=>"deception",:description=>"",:attribute=>"CHA"},
        :intimidation=>{:name=>"intimidation",:description=>"",:attribute=>"CHA"},
        :performance=>{:name=>"performance",:description=>"",:attribute=>"CHA"},
        :persuasion=>{:name=>"persuasion",:description=>"",:attribute=>"CHA"}
        #con
    }
    def initialize(type)
    #   @type = @@types[type]
      @type = @@short_types[type]
    end
end