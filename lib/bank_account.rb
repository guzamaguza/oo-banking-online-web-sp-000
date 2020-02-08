class BankAccount
  attr_accessor :name
  attr_reader :status, :balance

  def initialize(name)
    @name = name.freeze
    @status = "open"
    @balance = 1000
  end

  def deposit(amount)
    @balance = 1000 + amount
    return @balance
  end

  def display_balance
    "Your balance is $#{@balance}."
  end

  def valid?
    @balance > 0 && @status == "open" ?  true : false
  end

  def close_account
    @status = "closed"
  end

end
