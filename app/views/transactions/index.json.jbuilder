json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :trader_id, :stock_id, :execution_date, :quantity, :price
  json.url transaction_url(transaction, format: :json)
end
