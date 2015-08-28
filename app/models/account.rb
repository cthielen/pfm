class Account < ActiveRecord::Base
  has_many :transactions

  def balance
    transactions.sum(:amount).to_money
  end
end
