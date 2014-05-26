require 'stock_quote'

class Bot

  def initialize
    @symbol = 'aapl'
  end

  # Trade on the given date based on the bots strategy
  def trade(date)
    seconds_per_day = 60*60*24
    quote = StockQuote::Stock.quote(@symbol,date - 2*seconds_per_day, date - 1*seconds_per_day)
    if quote[0].close > quote[1].close
      "buy on #{date}"
    else
      "sell on #{date}"
    end
  end
end