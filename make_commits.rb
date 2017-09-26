require 'csv'

CSV.foreach("#{Dir.pwd}/commits.csv") do |row|

  times = rand(5)
  counter = 0

  while counter < times do
    `echo \"triggering a commit\" >> test.txt`
    `git add .`
    `git commit -m \"#{row[0]}\"`
    counter += 1
  end

end


`git push`
