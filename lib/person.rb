class Person
attr_reader :name
attr_accessor :bank_account, :happiness, :hygiene

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

def clean?
    @hygiene > 7
end

def happy?
    @happiness > 7
end

def get_paid(salary_amount)
    self.bank_account += salary_amount
    return "all about the benjamins"
end

def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
    self.happiness += 2
    self.hygiene -= 3
    return "♪ another one bites the dust ♫"
end

def call_friend(person_instance)
    self.happiness += 3
    person_instance.happiness += 3
    return "Hi #{person_instance.name}! It's #{self.name}. How are you?"
end

def start_conversation(person_instance, topic)
    if topic == "politics"
        self.happiness -= 2
        person_instance.happiness -= 2
        return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
        self.happiness += 1
        person_instance.happiness += 1
        return "blah blah sun blah rain"
    else
        return "blah blah blah blah blah"
    end

end

end
