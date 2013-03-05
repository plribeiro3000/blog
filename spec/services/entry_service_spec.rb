require_relative "../../app/services/entry_service"
require_relative "./service_helper"

describe EntryService do
  include ServiceHelper

  let(:entry_class) { mocked_class }
  let(:entry) { null_object }
  let(:user) { mocked_object }

  before :each do
    controller.send(:include, EntryService)
    stub_const("Entry", entry_class)
  end

  describe "#all" do
    before :each do
      Entry.stub(:all => [entry])
    end

    it "should return a collection of entries" do
      controller.all.should == [entry]
    end
  end

  describe "#find" do
    before :each do
      Entry.stub(:find).with("1").and_return(entry)
    end

    it "should return an specific entry" do
      controller.find("1").should == entry
    end
  end

  describe "#build" do
    before :each do
      Entry.stub(:new => entry)
    end

    it "should return a new entry" do
      controller.build.should == entry
    end
  end

  describe "#generate" do
    before :each do
      Entry.stub(:new).with({}).and_return(entry)
      controller.stub(:current_user => user)
      entry.stub(:save => true)
    end

    it "should return a created object" do
      controller.generate({}).should == entry
    end
  end

  describe "#modify" do
    before :each do
      Entry.stub(:find).with("1").and_return(entry)
      entry.stub(:update_attributes => true)
    end

    it "should return an updated entry" do
      controller.modify("1", {}).should == entry
    end
  end

  describe "#delete" do
    before :each do
      Entry.stub(:find).with("1").and_return(entry)
      entry.stub(:destroy => true)
    end

    it "should return a destroyed object" do
      controller.delete("1").should == entry
    end
  end
end
