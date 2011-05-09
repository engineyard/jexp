Gem::Specification.new do |s|
  s.name = %q{jexp}
  s.version = "0.1.1.pre"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.authors = ["Engine Yard"]
  s.date = %q{2011-05-04}
  s.description = %q{jexp}
  s.email = ["gems@engineyard.com"]
  s.files = Dir['lib/**/*.rb']
  s.homepage = %q{http://github.com/engineyard/jexp}
  s.summary = %q{jexp}
  s.test_files = Dir['spec/**/*.rb']

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<json>, [">= 0"])
    else
      s.add_dependency(%q<json>, [">= 0"])
    end
  else
    s.add_dependency(%q<json>, [">= 0"])
  end
end
