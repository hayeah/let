require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

class TestClass
  include Let
  let(:field) { rand }
end

describe "Let" do
  let(:obj) { TestClass.new }

  it "yields a float" do
    obj.field.should be_a(Float)
  end
  
  it "yields the same result" do
    obj.field.should == obj.field
    obj.field.should == obj.field
  end

  it "sets instance variable" do
    obj.field
    obj.instance_variable_defined?("@field").should be_true
    obj.instance_variable_get("@field").should == obj.field
  end
  
end
