require 'pry'
  class Person

    person =Person.new

  attr_accessor  :bank_account, :happiness, :hygiene
  attr_reader  :name

    def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

    def happy?
      if happiness > 7
        return true
      else
        return false
      end
  end

    def clean?
      if hygiene > 7
        return true
      else
        return false
    end
  end

   def hygiene=(user_input)
      # @hygiene = value
    if user_input > 10 # setting user_input() > (10)integer
      @hygiene = 10    # setting user_input.hygiene => hygiene
    elsif user_input < 0 # or if user_input.hygiene() < 0
      @hygiene = 0       # set user_input.hygiene(0) = 0
    else
       @hygiene = user_input # set user_input.hygiene = @hygiene
    end
  end

    def happiness=(points)
    #  @happiness = (@happiness + points)
    if points > 10
      @happiness = 10
    elsif points < 0
      @happiness = 0
    else
      return @happiness = points
    end
  end

    def get_paid(salary)
    @bank_account = (@bank_account + salary)
    return "all about the benjamins"
  end

    def take_bath
      @hygiene +=4  # replaces line :39
      self.hygiene=(@hygiene)



    return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

      def work_out
      @hygiene -=3
      self.hygiene=(@hygiene)
      @happiness += 2
      self.happiness=(@happiness)
      return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
      friend.happiness +=3
      self.happiness += 3
      # self.happiness=(@happiness)
      return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(phoner, topic)
      if topic == "politics"
        phoner.happiness -= 2
        # phoner.happiness
        self.happiness -= 2
        return "blah blah partisan blah lobbyist"
      elsif topic == "weather"
        phoner.happiness +=1
        self.happiness += 1
      return "blah blah sun blah rain"
      else topic ==! "politics" || "weather"
      return "blah blah blah blah blah"
    end
  end
  end


  # miles = Person.new("miles")
  #  @hygiene => 8
  # miles.hygiene=(400)
