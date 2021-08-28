# Write a program that stores each new puppy that is born 
# Write a Dog class that initialized with a name and also stores each new instance of Dog 
# that is instantiated 

class Dog 
    attr_accessor :name 
    @@all = []

    def initialize(name)
        @name = name 
        self.save
    end 

    def self.all 
        @@all 
    end

    def save 
        @@all << self 
    end

    def self.clear_all 
        @@all.clear
    end

    def self.print_all 
        self.all.each do |dog|
            puts dog.name 
        end
    end
end

ally = Dog.new("Ally")
p Dog.all
#=> [#<Dog:0x00007fffbc728f08 @name="Ally">]
Dog.print_all
#=> Ally