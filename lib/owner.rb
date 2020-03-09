require 'pry'
class Owner

  attr_reader :name, :species, :dogs, :cats
  attr_accessor :pets

  @@all = []


  def initialize(name)
    @species = "human"
    @@all << self
    @@pets = {:dogs => @dogs, :cats => @cats}
    @name = name
    @dogs = []
    @cats = []
  end

  # def name
  #   self.name
  # end

  # def species
  #   @species = "human"
  # end

  def self.all
   @@all
 end

 def self.count
   @@all.length
 end

 def self.reset_all
    @@all.clear
  end

  def say_species
      return "I am a #{@species}."
  end

  def pets
    @@pets
  end

  def buy_cat(name_of_cat)
    Cat.new(name_of_cat, self)
  end

  def buy_dog(name_of_dog)
    Dog.new(name_of_dog, self)
  end


 def walk_dogs
   dogs.each do |dog|
     dog.mood = 'happy'
   end
 end

 def feed_cats
   cats.each do |cat|
     cat.mood = 'happy'
   end
  end

 def list_pets
    "I have #{dogs.length} dog(s), and #{cats.length} cat(s)."
  end

    def sell_pets
      #binding.pry
        @@pets.collect do |species, instances|
             instances.each do |pet|
               pet.mood = "nervous"
             end
             instances.clear
           end
         end

end
