# your code goes here
class Person
  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(new_happy)
    if new_happy > 0 && new_happy < 10
      @happiness = new_happy
    elsif new_happy > 10
      @happiness = 10
    elsif new_happy < 0
      @happiness = 0
    end
  end

  def hygiene=(new_hygiene)
    if new_hygiene > 0 && new_hygiene < 10
      @hygiene = new_hygiene
    elsif new_hygiene > 10
      @hygiene = 10
    elsif new_hygiene < 0
      @hygiene = 0
    end
  end

  def clean?
    if self.hygiene > 7
      return true
    else
      return false
    end
  end

  def happy?
    if self.happiness > 7
      return true
    else
      return false
    end
  end

  def get_paid(salary_amt)
    @bank_account += salary_amt
    return "all about the benjamins"
  end

  def take_bath
    @hygiene + 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end 
end
