
require 'pry'

class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account


    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(happiness_val)
        if happiness_val > 10
            happiness_val = 10
        elsif happiness_val < 0
            happiness_val = 0
        end
        @happiness = happiness_val
    end


    def hygiene=(hygiene_val)
        if hygiene_val > 10
            hygiene_val = 10
        elsif hygiene_val < 0
            hygiene_val = 0
        end
        @hygiene = hygiene_val
    end

     

    def happy?
        @happiness > 7
    end

    def clean?
        if @hygiene > 7
            true
        else 
            false
        end
    end

    def get_paid(salary)
        @bank_account = @bank_account + salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene = @hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene = @hygiene - 3
        self.happiness = @happiness + 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness = @happiness + 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        
        if topic == "politics"
            self.happiness = @happiness - 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"

        elsif topic == "weather"
            self.happiness = @happiness + 1
            friend.happiness += 1
            "blah blah sun blah rain"
            
        else 
            "blah blah blah blah blah"

        end
    end

end