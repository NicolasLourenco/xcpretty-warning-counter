task :default => :test

VERSION = '1.0.0'
BUILD = '20160330.0'
TOOL = 'xcpretty-warning-counter'

task :vamper do
  `vamper -u`
  `git add :/`
  `git commit -m 'Update version info'`
  puts "Updated version"
end

task :release do
  `git tag -a 'v#{VERSION}' -m 'Release v#{VERSION}-#{BUILD}'`
  puts "Pushing tags to GitHub..."
  `git push --follow-tags`
  `rm *.gem`
  `gem build #{TOOL}.gemspec`
  puts "Pushing gem..."
  `gem push #{TOOL}-#{VERSION}.gem`
end
