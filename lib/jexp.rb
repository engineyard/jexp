require 'json'
require 'forwardable'

module JEXP
  def self.jexp(*a)
    if a.size == 1 && RUBY_VERSION >= "1.9.0"
      o = a.first
      o.respond_to?(:to_jexp) ? o.to_jexp : JSON.parse(JSON.dump([o])).first
    else
      return *a.map{|o| o.respond_to?(:to_jexp) ? o.to_jexp : JSON.parse(JSON.dump([o])).first}
    end
  end
end

require 'jexp/ext/array'
require 'jexp/ext/hash'
require 'jexp/ext/integer'
require 'jexp/ext/string'
require 'jexp/model'
require 'jexp/resource'
