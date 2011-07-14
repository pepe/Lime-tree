require 'spec_helper'

describe "Static Model" do
  let(:static) { Static.new }
  it 'can be created' do
    static.should_not be_nil
  end
  context "atrributes" do
    it "has title" do
      static.title = 'Some title'
      static.title.should == 'Some title'
    end
    it "has path" do
      static.path = 'Some path'
      static.path.should == 'Some path'
    end
    it "has body" do
      static.body = 'Some body'
      static.body.should == 'Some body'
    end
    it "has tags" do
      static.tags = %w(some tags)
      static.tags.should == %w(some tags)
    end
  end
end
