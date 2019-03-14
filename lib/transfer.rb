require 'pry'

class Transfer
  attr_accessor :status
  attr_reader :sender, :receiver, :amount 
  
  def initialize (sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end 
  
  def valid?
    if self.receiver.class == BankAccount && self.sender.class == BankAccount
      true 
    else
      false 
    end 
  end 
  
end

