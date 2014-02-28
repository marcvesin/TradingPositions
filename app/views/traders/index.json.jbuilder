json.array!(@traders) do |trader|
  json.extract! trader, :id, :name
  json.url trader_url(trader, format: :json)
end
