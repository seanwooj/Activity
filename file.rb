require 'git'

loop do
  f = File.write('time.txt', Time.now)

  g = Git.init
  puts g.add(:all=>true)
  puts g.commit("Updated on #{Time.now}")
  # puts g.push(g.remote(''))

  # wait_time = rand((60 * 60 * 1)..(60 * 60 * 10))
  # puts "Seconds: #{wait_time}\nNext run: #{Time.now+wait_time}"

  sleep 1800
end
