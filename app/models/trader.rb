class Trader < ActiveRecord::Base
has_many :transactions
has_many :stocks, :through => :transactions
validates :name, presence:true
validates :name, uniqueness:true

def total_position
  transactions.to_a.sum { |transaction| transaction.total_price }
end

end
