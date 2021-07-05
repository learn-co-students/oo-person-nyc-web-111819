class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8 
        @hygiene = 8 
    end

    def happiness
        @happiness = 10 if @happiness > 10
        @happiness = 0  if @happiness < 0
        @happiness
    end 

    def hygiene
        @hygiene = 10 if @hygiene > 10 
        @hygiene = 0 if @hygiene < 0
        @hygiene
    end

    def happy? 
        @happiness > 7
    end

    def clean?
        @hygiene > 7
    end

    def get_paid(salary)
        @bank_account += salary
        @bank_account
        p "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        p "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        p "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3 
        friend.happiness += 3
        p "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation (friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            p 'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            p "blah blah sun blah rain"
        elsif topic == "programming"
            p "blah blah blah blah blah"
        end 
            
        
    end

end