require 'pry'

class Owner
  # code goes here
  attr_reader :name, :species, :cats 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @cats = cats
    @species = "human"
    @@all << self
  end 
  
  def self.all 
    @@all 
  end
  
  def say_species
    "I am a human."
  end
  
  def self.count 
    self.all.count
  end
  
  def self.reset_all
    self.all.clear
  end
  
  def cats
    Cat.all.select {|c| c.owner == self}
  end
 
  def dogs
    Dog.all.select {|d| d.owner == self}
  end
end