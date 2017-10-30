module LoadJson
  def self.load_json_employees
    File.read("E:/Coding Challenge/coding challenge 1/employees.json")
  end
  def self.load_json_addresses
    File.read("E:/Coding Challenge/coding challenge 1/addresses.json")
  end

  def self.load_json_departments
    File.read("E:/Coding Challenge/coding challenge 1/departments.json")
  end
end