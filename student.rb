class Student
  def initialize(name, age, marks, roll_number)
    @data = {
             name: name,
              age: age,
            marks: marks,
      roll_number: roll_number,
    }
  end

  def name
    @data.fetch(:name)
  end

  def age
    @data.fetch(:age)
  end

  def marks
    @data.fetch(:marks)
  end

  def roll_number
    @data.fetch(:roll_number)
  end

  def self.sort(collection = [], criteria = 'name')
    if valid_collection? collection
      collection.sort_by(&criteria.to_sym)
    end
  end

  def self.valid_collection?(collection = [])
    is_valid = true
    if collection.kind_of?(Array) && collection.any?
      collection.each do |student_information|
        unless student_information.kind_of? Student
          is_valid = false
          break
        end
      end
    else
      is_valid = false
    end

    return is_valid
  end
end

# require 'faker'
# # # Create seeded data
# student_data_array = []
# 1.upto(20).each do |number|
#   student_data_array << Student.new(
#     Faker::Name.name,
#     Faker::Number.between(from: 10, to: 15),
#     Faker::Number.between(from: 1, to: 100),
#     number.to_s
#   )
# end
