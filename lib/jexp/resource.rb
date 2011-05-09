module JEXP
  module Resource
    extend Forwardable

    def_delegator :to_hash, :to_jexp
    def_delegator :to_jexp, :to_json

    def self.included(receiver)
      receiver.extend Model
    end

    def to_hash
      members.zip(values).inject({}) {|h,(k,v)| h.update(k.to_s => v) }
    end
  end
end
