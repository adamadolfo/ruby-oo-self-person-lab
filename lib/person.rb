# your code goes here
require 'pry'
class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness)
    @happiness = happiness.clamp(0, 10)
    end

    def hygiene=(hygiene)
        @hygiene = hygiene.clamp(0, 10)
    end

    def happy?
        if @happiness > 7
            return true
        else
            return false
        end
    end
    def clean?
        if @hygiene > 7 
            return true
        else 
            return false
        end
    end
end
joe = Person.new("Joe")
joe.happiness

