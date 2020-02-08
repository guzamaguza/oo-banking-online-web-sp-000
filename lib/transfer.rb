class Transfer
  # your code here
  def initialize(sender, receiver)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = 50
  end

  def valid?
    if @sender.valid? == true && @receiver.valid? == true
        true
    else
        false
    end
  end

end
