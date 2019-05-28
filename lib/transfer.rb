class Transfer
  attr_accessor :sender, :receiver, :amount, :status, :count

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    sender.valid? && receiver.valid?
  end

  def execute_transaction
    if sender.valid? && receiver.valid?
      @status = 'complete'
    else
      @status = 'rejected'
    end


end
