class Transaction < ActiveRecord::Base
  belongs_to :account
  belongs_to :category
  belongs_to :vendor

  enum kind: [ :withdrawal, :deposit, :check ]
end
