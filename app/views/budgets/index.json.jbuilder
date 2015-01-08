json.array!(@budgets) do |budget|
  json.extract! budget, :id, :name, :category_id, :amount, :start_at, :duration, :repeating
  json.url budget_url(budget, format: :json)
end
