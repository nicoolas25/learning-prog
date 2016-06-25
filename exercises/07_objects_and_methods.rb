class IdentityValidator
  def initialize(identifier, password)
    @identifier = identifier
    @password = password
  end

  def valid?
    valid_identifier? && valid_password?
  end

  private

  UPPERCASE_RE = /[\p{Lu}\p{Lt}]/
  LOWERCASE_RE = /\p{Ll}/

  def valid_identifier?
    @identifier.length >= 6
  end

  def valid_password?
    @password.length >= 6 && @password =~ UPPERCASE_RE && @password =~ LOWERCASE_RE
  end
end

class Account
  attr_reader :money
  attr_reader :name

  def initialize(name, money = 0)
    @name = name
    @money = money
  end

  def deposit(amount)
    if amount <= 0
      OperationResult.new(false, "The amount is negative")
    else
      @money += amount
      OperationResult.new(true)
    end
  end

  def withdraw(amount)
    if amount < 0
      OperationResult.new(false, "The amount is negative")
    elsif amount > @money
      OperationResult.new(false, "You don't have enough money")
    else
      @money -= amount
      OperationResult.new(true)
    end
  end
end

class OperationResult
  attr_accessor :reason

  def initialize(success, reason = nil)
    @success, @reason = success, reason
  end

  def success?
    @success
  end

  def to_s
    if success?
      "Success"
    elsif reason.nil?
      "Failure: #{reason}"
    else
      "Failure: no reason given"
    end
  end
end
