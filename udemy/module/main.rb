require_relative 'auth_module'

users = [
  { username: "natasha", password: "password1" },
  { username: "elijah", password: "password2" },
  { username: "leo", password: "password3" },
  { username: "hanna", password: "password4" },
  { username: "john", password: "password5" }
]

hashed_users = Auth.create_secure_users(users)
puts hashed_users
puts Auth.authenticate_user("natasha", "password1", hashed_users)