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
        if self.happiness > 7
            return true
        else
            return false
        end
    end
    def clean?
        if self.hygiene > 7 
            return true
        else 
            return false
        end
    end

    def get_paid(salary)
        self.bank_account = salary + self.bank_account
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        #Self.hygiene=(self.hygiene - 3)
        self.hygiene -=3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person,topic)

        if topic == "politics"
            person.happiness  -= 2
            self.happiness -= 2
         
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            person.happiness  += 1
            self.happiness += 1
            return 'blah blah sun blah rain'
        else 
            return 'blah blah blah blah blah'
        end

       
    end


end
joe = Person.new("Joe")
joe.happiness
joe.take_bath
bob = Person.new("Bob")
bob.hygiene = 2
bob.work_out


