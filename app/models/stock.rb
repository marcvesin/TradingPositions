class Stock < ActiveRecord::Base
has_many :transaction
has_many :traders, :through => :transactions
validates :name, :price, presence: true
validates :price, numericality: {greater_than: 0.001}
validates :name, uniqueness: true
end
