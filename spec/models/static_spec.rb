require 'spec_helper'

describe "Static Model" do
  before do
    Static.delete_all
  end
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
  context "when queried" do
    it "returns all tagged with some tag" do
      static.tags = ['in_menu']
      static.save
      Static.tagged_with('in_menu').first.should == static
    end
  end
end
