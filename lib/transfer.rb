class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    @sender.valid? == true && @receiver.valid? == true  ?  true : false
  end

  def execute_transaction
    @sender.balance -= @amount
    @receiver.balance += @amount
    @status = "complete"
  end


end
