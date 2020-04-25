#require "bundler/gem_tasks"

task :install => :build do
  sh "jruby -S gem install #{Dir.glob('*.gem').join(' ')} --no-document"
end

task :build do
  sh "gem build cf3propane.gemspec"
end

task :test do
  sh "jruby test/test.rb"
end

task :clean do
  sh "rm *.gem"
end 

task :default => [:install]
