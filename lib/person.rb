require 'pry'

class Person
    attr_reader :name
    attr_accessor :bank_account, :hygiene, :happiness
    def initialize(name, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = 25
        @happiness = happiness
        @hygiene = hygiene
    end
    def happiness=(value)
        @happiness = value
        if @happiness > 10
            @happiness = 10
            return @happiness
        end
        if @happiness < 0
            @happiness = 0
            return @happiness
        end
        @happiness
    end
    def hygiene=(value)
        @hygiene = value
        if @hygiene > 10
            @hygiene = 10
            return @hygiene
        end
        if @hygiene < 0
            @hygiene = 0
            return @hygiene
        end
        @hygiene
    end
    def clean?
        if @hygiene > 7
            return true
        end
        return false
    end
    def happy?
        if @happiness > 7
            return true
        end
        return false
    end
    def get_paid(salary)
        @bank_account += salary
        return 'all about the benjamins'
    end
    def take_bath
        @hygiene = @hygiene + 4
        self.hygiene=(@hygiene)
        return '♪ Rub-a-dub just relaxing in the tub ♫'
    end
    def work_out
        @hygiene = @hygiene - 3
        @happiness = @happiness + 2
        self.hygiene=(@hygiene)
        self.happiness=(@happiness)
        return '♪ another one bites the dust ♫'
    end
    def call_friend(person)
        person.happiness=(person.happiness + 3)
        self.happiness=(@happiness + 3)
        return "Hi #{person.name}! It's #{@name}. How are you?"
    end
    def start_conversation(name, topic)
        if topic == 'politics'
            name.happiness=(@happiness - 2)
            self.happiness=(@happiness - 2)
            return "blah blah partisan blah lobbyist"
        end
        if topic == 'weather'
            name.happiness=(@happiness + 1)
            self.happiness=(@happiness + 1)
            return "blah blah sun blah rain"
        end
        return 'blah blah blah blah blah'
    end
end