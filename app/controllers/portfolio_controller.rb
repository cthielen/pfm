class PortfolioController < ApplicationController
  def overview
    @recent_transactions = Transaction.all.order('created_at DESC').limit(50)
  end
end
