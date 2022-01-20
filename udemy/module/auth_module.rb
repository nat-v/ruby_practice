require 'bundler/inline'
 
gemfile true do
 source 'http://rubygems.org'
 gem 'bcrypt'
end

module Auth 
  require 'bcrypt'
  puts "Module AUTH activated"

  def create_hash_digest(password)
    BCrypt::Password.create(password)
  end
  
  def verify_hash_digest(password)
    BCrypt::Password.new(password)
  end
  
  def create_secure_users(list_of_users)
    list_of_users.each do |user_record|
      user_record[:password] = create_hash_digest(user_record[:password])
    end
    list_of_users
  end

  def authenticate_user(username, password, list_of_users)
    list_of_users.each do |user_record|
      if user_record[:username] == username &&
        verify_hash_digest(user_record[:password]) == password
        return "Authentication successful #{user_record}"
      else 
        return "Credentials were not correct"
      end
    end
  end

end