require './module/auth_module'

class Student
  include Auth
  attr_accessor :first_name, :last_name, :email, :username, :password
 
  def initialize(firstname, lastname, username, email, password)
    @first_name = firstname
    @last_name = lastname
    @username = username
    @email = email
    @password = password
  end
 
  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username}, email address: #{@email}"
  end 
end
 
student = Student.new("Natasha", "Volynets", "nat_v", "natasha@example.com", "123456789")
puts student

hashed_password = student.create_hash_digest(student.password) 
puts "Hashed password: #{hashed_password}"