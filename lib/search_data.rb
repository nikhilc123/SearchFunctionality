module SearchData
  def SearchData.find_records
    puts "Search Records for: "
    puts "1. Employee"
    puts "2. Address"
    puts "3. Department"
    print "Enter your choice: "
    choice = gets.chomp.to_i
    case choice
      when 1
        print "Enter attribute name: "
        title = gets.chomp
        print "Enter value: "
        value = gets.chomp
        x = lookup(title, value)
        puts "Here are your details: "
        p "First Name: #{x['first_name']}"
        p "Last Name : #{x['last_name']}"
        p "Dept Id   : #{x['dept_id']}"

          #data1.find {|x| p if x[:name] == x[:value]}
          #p data1.find {|x| p x['first_name'] if value == x['first_name']}
          #p x['#{value}']}
          # p data1['#{title}']
          # p data1['#{val}']
          #store = data1.reduce({}) { |h, v| h.merge v }['title']
          # if data1['#{title}'] == data1['#{val}']
          #   p data1['#{first_name}']
          #   p data1['#{last_name}']
          # end
          # p data1.find {|x| x['first_name'] == 'John'
          # p x['first_name']
          # p x['last_name']
          # p x ['dept_id']}
          #ids = data1.map { |x| x[:id] }
          # data1.select {|data| data["title"] == val
          # p data["title"]
          # p data["id"]}
          #puts "Here are the details"

          #data1.select {|k,v| val.include?(k) }

          #options_for_select(@sorted.map{|hash| [hash["id"],hash["name"]]})
          # data1.any? {|h| h['first_name'] == 'John'
          # p h['first_name']
          # p h['last_name']
          # p h['dept_id']}
          # p data1.key(val)
          # data1.any? { |param| param.include?(val)
          # p "#{val}"
          # p param['id']
          # p param['first_name']
          # p param['last_name']
          # p param ['dept_id']}
          # if data1['first_name'] == val
          #   puts "Title #{data1['first_name']}"
          # end


          #puts "Title: #{data1['title']}"

          # data1.each do |data|
          #   if data['title'] == data['val']
          #     puts "First Name: #{data['title']}"
          #     puts "Last Name: #{data['val']}"
          #     puts "Dept Id: #{data['dept_id']}"
          #   end
          # end
          #introduction
      end
    # else
    #   puts "Wrong selection!"
    # end
  #end
  end

  def self.lookup(title, value)
    file1 = LoadJson.load_json_employees
    file2 = LoadJson.load_json_addresses
    file3 =LoadJson.load_json_departments
    data1 = JSON.parse(file1)
    data2 = JSON.parse(file2)
    data3 = JSON.parse(file3)
    # puts "#{data1}"
    #data1.select{|x| x['first_name']}
    # if x[:first_name] == value
    #   puts "Finally: #{x[:first_name]}"
    # end
    data1.select { |hash| hash['first_name'].include?('John')}
    data1.find {|x| x['first_name'] == 'John'}
  end
end