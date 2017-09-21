require 'csv'

CSV.foreach("#{Dir.pwd}/commits.csv") do |row|

  `echo \"triggering a commit\" >> test.txt`
  `git add .`
  `git commit -m \"#{row[0]}\"`
  `git push`

end
