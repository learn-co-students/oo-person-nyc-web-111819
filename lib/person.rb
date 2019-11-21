# your code goes here

require 'pry'

class Person
    
    attr_accessor :happiness, :hygiene, :bank_account, :topic
    attr_reader :name

    def initialize(name)
        @name = name
        @happiness = 8
        @hygiene = 8
        @bank_account = 25
end 

    def bank_account=(bank_account = 25)
        @bank_account = bank_account
    end

    def hygiene
        if @hygiene > 10
            @hygiene = 10
        else if @hygiene < 0
            @hygiene = 0
        end
    end
        @hygiene
    end

    def happiness
        if @happiness > 10
            @happiness = 10
        else if @happiness < 0
            @happiness = 0
        end
    end
        @happiness 
    end

    def clean?
        if @hygiene > 7
            true
        else
            false
        end      
    end

    def happy?
        if @happiness > 7
            true
        else 
            false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        hygiene=(self.hygiene)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def hygiene=(hygiene)
        @hygiene = hygiene
        if @hygiene > 10
            @hygiene = 10
        else if @hygiene < 0
            @hygiene = 0
        end
    end
    @hygiene
    end

    def work_out
        self.hygiene -= 3
        hygiene=(self.hygiene)
        self.happiness += 2
        happiness=(self.happiness)
        "♪ another one bites the dust ♫"
    end

    def happiness=(happiness)
        @happiness = happiness
        if @happiness > 10
            @happiness = 10
        else if @happiness < 0
            @happiness = 0
        end
    end
    @happiness
    end

    def call_friend(friend_name)
        self.happiness += 3
        friend_name.happiness += 3
        "Hi #{friend_name.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(name, topic)
        if topic == "politics"
            self.happiness -= 2
            name.happiness -= 2
            "blah blah partisan blah lobbyist"
        else if topic == "weather"
            self.happiness += 1
            name.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
        end
    end
end