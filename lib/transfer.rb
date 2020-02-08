class Transfer
  # your code here
  def initialize(sender, receiver)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = 50
  end

  def valid?
    if @sender.status == "open" && @receiver.status == "open"
        true
    else
        false
    end

  end

end
