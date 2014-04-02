class TradingController < ApplicationController
  def index
    @traders = Trader.all.sort {|a,b| b.total_position <=> a.total_position}
  end
end
