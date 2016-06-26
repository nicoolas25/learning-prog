class Customer
  def initialize(id, name, email, registered_at)
    @id = id
    @name = name
    @email= email
    @registered_at = registered_at
  end

  def can_play?
    in_the_last_30_days?(@registered_at)
  end

  protected

  def in_the_last_30_days?(date)
    date.next_day(30) >= Date.now
  end
end

class PayingCustomer < Customer
  def initialize(id, name, email, registered_at, last_payment_at)
    super(id, name, email, registered_at)
    @last_payment_at = last_payment_at
  end

  def can_play?
    in_the_last_30_days(@last_payment_at)
  end
end
