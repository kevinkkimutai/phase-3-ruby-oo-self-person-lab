# your code goes here
class Person
  attr_reader :name
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = bank_account = 25
    @happiness = happiness = 8
    @hygiene = hygiene = 8
  end

  # happiness section
  def happiness
    @happiness
  end

  def happiness=(happiness)
    if happiness < 0
      @happiness = 0
    elsif happiness > 10
      @happiness = 10
    else
      @happiness = happiness
    end
  end

  def happy?
    if @happiness > 7
      return true
    else
      return false
    end
  end

  # hygien section
  def hygiene
    @hygiene
  end

  def hygiene=(hygiene)
    if hygiene < 0
      @hygiene = 0
    elsif hygiene > 10
      @hygiene = 10
    else
      @hygiene = hygiene
    end
  end

  def clean?
    if @hygiene > 7
      return true
    else
      return false
    end
  end

  #   paid section
  def get_paid(amount)
    @bank_account += amount
    return "all about the benjamins"
  end

  #   take bath section
  def take_bath
    self.hygiene = @hygiene + 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  # work out
  def work_out
    self.happiness = @happiness + 2
    self.hygiene = @hygiene - 3
    return "♪ another one bites the dust ♫"
  end

  # call fried
  def call_friend(friend)
    self.happiness = @happiness + 3
    friend.happiness = friend.happiness + 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end
#   start conversation with
def start_conversation(person, topic)
    if topic === "politics"
        self.happiness= @happiness - 2
        person.happiness= person.happiness - 2
        return "blah blah partisan blah lobbyist"
    elsif topic === "weather"
        self.happiness= @happiness + 1
        person.happiness= person.happiness + 1
        return "blah blah sun blah rain"
    else
        return "blah blah blah blah blah"
    end

end
end
