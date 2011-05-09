Bundler.setup :test

$:.unshift File.join(File.dirname(__FILE__), '..', 'lib')

require 'jexp'
