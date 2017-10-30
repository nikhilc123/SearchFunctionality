module ViewData
  def ViewData.display_data
    puts "View Attributes for: "
    puts "1. Employee"
    puts "2. Address"
    puts "3. Department"
    puts "Enter your choice: "
    choice = gets.chomp.to_i
    case(choice)
      when 1
        file1= LoadJson.load_json_employees
        data = JSON.parse(file1)
        puts "Here are the attributes of all the Employee"
        data.each do |dat|
          print "\nId: #{dat["id"]}"
          print "\nFirst Name: #{dat["first_name"]}"
          print "\nLast Name: #{dat["last_name"]}"
          print "\nDept Id: #{dat["dept_id"]}"
          puts "\n"
        end
      when 2
        file2 = LoadJson.load_json_addresses
        data = JSON.parse(file2)
        puts "Here are the attributes of the Addresses"
        data.each do |dat|
          print "\nId: #{dat["id"]}"
          print "\nCity: #{dat["city"]}"
          puts "\n"
        end
      when 3
        file3 = LoadJson.load_json_departments
        data = JSON.parse(file3)
        puts "Here are the attributes of Departments"
        data.each do |dat|
          print "\nId: #{dat["id"]}"
          print "\nName: #{dat["name"]}"
          puts "\n"
        end
    end
  end
end