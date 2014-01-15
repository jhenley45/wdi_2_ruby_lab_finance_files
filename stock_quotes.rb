require 'yahoo_finance'
require 'pry'

# Your Code Here


# quote_type = YahooFinance::StandardQuote


#puts "Please enter a stock ticker symbol."
sym = ARGV[0]
sym = sym.strip


data = YahooFinance.quotes([sym], [:last_trade_price])
price = data[0].last_trade_price

puts "The current price for #{sym} is #{price}"

puts "Your previous searches are:"
read = File.open('quotes.csv')
read.each do |line|
	puts line
end





#writes current search to csv file
file = File.open('quotes.csv', 'a')
file.puts "#{sym}, #{price}, #{Time.now}"
