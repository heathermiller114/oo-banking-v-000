class Transfer

  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    if sender.valid? == true && receiver.valid? == true
      true
    else
      false
    end
  end
  
  def execute_transaction
    if valid? == true && status == "pending"
      sender.balance -= @amount
      receiver.balance += @amount
      @status = "complete"
    elsif valid? != true
      "Transaction rejected. Please check your account balance."
    end
  end




end
