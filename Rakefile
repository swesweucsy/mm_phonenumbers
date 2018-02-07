require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.test_files = FileList['test/test_mm_phonenumbers.rb','test/test_sanitize_phone.rb']
end

desc "Run tests"
task :default => :test