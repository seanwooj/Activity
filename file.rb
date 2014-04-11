require 'git'

loop do
  f = File.write('time.txt', Time.now)

  g = Git.init
  puts g.add(:all=>true)
  puts g.commit("Updated on #{Time.now}")
  puts g.push(g.remote('git@github.com:seanwooj/Activity.git'))

end
