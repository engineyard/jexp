require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe JEXP do
  it "converts strings properly" do
    JEXP.jexp('hello').should == 'hello'
  end

  it "converts numbers properly" do
    JEXP.jexp(123).should == 123
  end

  it "converts arrays properly" do
    JEXP.jexp(['hello', 'there']).should == ['hello', 'there']
  end

  it "converts hashes properly" do
    JEXP.jexp('hello' => 'there').should == { 'hello' => 'there' }
    JEXP.jexp('hello' => ['there']).should == { 'hello' => ['there'] }
  end
end
