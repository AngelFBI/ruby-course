users = [
  { username: 'angel', password: 'password1' },
  { username: 'jack', password: 'password2' },
  { username: 'arya', password: 'password3' },
  { username: 'jonshow', password: 'password4' },
  { username: 'heisenberg', password: 'password5' }
]

def authentication(username, password, users)
  users.each do |user|
    return user if user[:username] == username && user[:password] == password
  end
  'Credentials were not correct'
end

puts 'Welcome to the authenticator'
puts '-' * 25
puts 'This program will take input from the user and compare password'

attempts = 1
while attempts < 4

  print 'Username: '
  username = gets.chomp
  print 'Password: '
  password = gets.chomp

  auth = authentication(username, password, users)
  puts auth

  puts
  puts 'Press n to quit or any other key to continue: '
  input = gets.chomp
  break if input == 'n'

  attempts += 1
end

puts 'You have exceeded the number of attempts' if attempts == 4
