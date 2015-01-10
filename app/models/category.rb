class Category < ActiveRecord::Base
  has_many :transactions

  # Returns the subset of the 'transactions' relation with
  # reconciled_at dates within the range start_end to end_date
  def transactions_between(start_date, end_date)
    transactions.where("reconciled_at between ? and ?", start_date, end_date)
  end
end
