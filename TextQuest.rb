require 'pp'
require 'faker'
__Root__ = "C:/Users/JonathanCraven/Documents/Scripts/Practice/stuff/textQuest"
require __Root__+"/Data.rb"
require __Root__+"/Dice.rb"
require __Root__+"/Item.rb"
require __Root__+"/GameObject.rb"
require __Root__+"/Attribute.rb"
require __Root__+"/SkillType.rb"
require __Root__+"/Skill.rb"
require __Root__+"/Entity.rb"
require __Root__+"/Player.rb"

def main
    # new_game = welcome_message
    # options if new_game
    puts "hello"
    # puts d4(2)
    r = random_character
    r.stats
end

def welcome_message
    puts "Hello adventurer! Welcome to TextQuest!"
    puts "Would you like to  enbark on a new quest? Y/n"
    answer = gets.chomp
    return if answer == 'n'? false : true
end

def options
    puts "1. New Character"
    puts "2. Random Object"
    puts "3. Exit Game"
    choice = gets.chomp.to_i
    case choice
    when 1
        puts "Create a new Character..."
        new_character
    when 2
        puts "Generate a random object..."
        random_object
    when 3
        puts "Exiting..."
    else
        puts "That is not an option"
        options
    end
end

def new_character
    puts "Species?"
end

def random_object
    obj = GameObject.new
    pp obj
end

def random_character
    Entity.new({})
end

main