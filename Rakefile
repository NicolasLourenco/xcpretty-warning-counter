task :default => :test

VERSION = '1.0.0'
BUILD = '20160304.0'

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
  `gem build app-tools.gemspec`
  puts "Pushing gem..."
  `gem push app-tools-#{VERSION}.gem`
end
