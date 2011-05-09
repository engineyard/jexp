require 'bundler'
require 'spec/rake/spectask'

desc "Run specs"
Spec::Rake::SpecTask.new(:spec) do |t|
  t.spec_files = FileList['spec/**/*_spec.rb']
  t.libs << 'lib'
end
