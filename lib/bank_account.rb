require 'pry'

class BankAccount
attr_accessor :balance, :status
attr_reader :name

def initialize(name)
  @name = name
  @balance = 1000
  @status = "open"
end

def deposit(balance)
  self.balance = 1000 + balance
end

def display_balance
  "Your balance is $#{balance}."
end

def valid?
  if status == 'open' && balance > 0
    true
  elsif balance = 0
    false
  else status = "closed"
    false
  end
end

def close_account
  self.status = "closed"
end

end
