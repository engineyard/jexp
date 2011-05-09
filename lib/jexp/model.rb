module JEXP
  module Model
    def new(attrs = {})
      sattrs = attrs.inject({}) {|h,(k,v)| h.update(k.to_s => v) }
      super(*members.map {|m| sattrs.delete(m.to_s) })
    end
  end
end
