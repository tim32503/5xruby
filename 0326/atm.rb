class ATM
  attr_accessor :balance

  def initialize(balance)
    @balance = balance
  end

  # refactor 重構
  def deposit(amount)
    @balance += amount > 0 ? amount : 0
  end

  def withdraw(amount)
    
    @balance -= amount > 0 && enough?(amount) ? amount : amount = 0

    return amount
  end

  private 

  def enough?(amount)
    amount <= @balance
  end

end