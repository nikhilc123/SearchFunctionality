require 'json'
require_relative 'view_data'
require_relative 'search_data'
require_relative 'load_json'

class Main
  include ViewData
  include SearchData
  include LoadJson

  def display
    2.times do
      puts "\nWelcome User"
      puts "Press C to continue"
      input = STDIN.gets.chomp.downcase
      if input == 'c'
        puts "Choose your action to proceed: "
        puts "1. View attributes"
        puts "2. Search record"
        puts "3. exit"
        print "Enter the number: "
        value = gets.chomp.to_i
        ViewData.display_data if value == 1
        SearchData.find_records if value == 2
      end
    end
  end
end
main = Main.new
main.display