

class Person 
  # getters and setters- this way using macros
  # readers are getters (read only)
  # accessors are setters (set and read)
  attr_reader :name
  attr_accessor :bank_account
  attr_accessor :happiness, :hygiene

  # initialize name and set some default instance variables
  def initialize(name)
    @name = name    
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  # method has logic to implement min/max values
  def happiness
    @happiness.clamp(0,10)
  end
  
  def hygiene
    @hygiene.clamp(0,10)
  end

  def happy?
    @happiness > 7 ? true : false
  end

  def clean?
    @hygiene > 7 ? true : false
  end

  def get_paid(amount)
    @bank_account += amount
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    case topic
    when "politics"
      friend.happiness -= 2
      self.happiness -= 2
      "blah blah partisan blah lobbyist"
    when "weather"
      friend.happiness += 1
      self.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
end

