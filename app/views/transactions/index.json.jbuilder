json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :cleared_at, :reconciled_at, :account_id, :amount, :vendor_id, :category_id, :notes, :split_id
  json.url transaction_url(transaction, format: :json)
end
