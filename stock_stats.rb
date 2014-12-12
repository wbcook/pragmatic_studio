# Three file CSV reader to demo OO program design.
# Requires stock_stats.rb, csv_reader.rb, book_in_stock.rb, data.csv
require_relative 'csv_reader'

reader = CsvReader.new

ARGV.each do |csv_file_name|
  STDERR.puts "Processing #{csv_file_name}"
  reader.read_in_csv_data(csv_file_name)
end

puts "Total value = #{reader.total_value_in_stock}"
