class Transaction < ActiveRecord::Base
belongs_to :trader
belongs_to :stock
validates :stock_id, :trader_id, :execution_date, :quantity, :price, presence:true
validates :price, numericality: {greater_than: 0.001}

def total_price
  self.quantity * price
end

end
