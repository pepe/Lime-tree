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
    it "has weight" do
      static.weight = 1
      static.weight.should == 1
    end
    it "has zero default weight" do
      static.weight.should == 0
    end
  end
  context "when queried" do
    it "returns all tagged with some tag" do
      static.tags = ['configuration']
      static.save
      Static.tagged_with('configuration').first.should == static
    end
    context "for menu" do
      before do
        static.tags = ['in_menu']
      end
      it "returns only path and title" do
        static.body = 'Some body'
        static.save
        Static.for_menu.first.body.should be_nil
      end
      it "returns sorted by weight" do
        Static.create(title: 'Some', path: 'some', weight: 900, tags:['in_menu'])
        static.weight = 999
        static.save
        Static.for_menu.first.should == static
      end
    end
  end
  context "with parts" do
    it "returns body as parsed yaml" do
      static.body = "footer:\n  Text"
      static.parts['footer'].should == 'Text'
    end
    it "returns empty parts when no body" do
      static.parts['footer'].should be_nil
    end
  end
  context "when tagged" do
    it "returns tags joined by semicolon" do
      static.tags = ['in_menu', 'hot']
      static.text_tags.should == 'in_menu;hot'
    end
    it "parses text tags to array" do
      static.text_tags = 'in_menu;hot'
      static.tags.should == ['in_menu', 'hot']
    end
  end
end
