#require 'spec_helper'
require_relative "../../app/services/entry_service"

describe EntryService do
  let(:entry_class) { Class }
  let(:entry) { Object.new }

  before :each do
    stub_const("Entry", entry_class)
  end

  describe "#index" do
    before :each do
      Entry.stub(:all => [entry])
    end

    it "should return a collection of entries" do
      EntryService.index.should == [entry]
    end
  end

  describe "#find" do
    before :each do
      Entry.stub(:find).with("1").and_return(entry)
    end

    it "should return an specific entry" do
      EntryService.find("1").should == entry
    end
  end

  describe "#new" do
    before :each do
      Entry.stub(:new => entry)
    end

    it "should return a new entry" do
      EntryService.new.should == entry
    end
  end

  describe "#create" do
    before :each do
      Entry.stub(:create).with({}).and_return(entry)
    end

    it "should return a created object" do
      EntryService.create({}).should == entry
    end
  end

  describe "#update" do
    before :each do
      Entry.stub(:find).with("1").and_return(entry)
      entry.stub(:update_attributes => true)
    end

    it "should return an updated entry" do
      EntryService.update("1", {}).should == entry
    end
  end

  describe "#destroy" do
    before :each do
      Entry.stub(:find).with("1").and_return(entry)
      entry.stub(:destroy => true)
    end

    it "should return a destroyed object" do
      EntryService.destroy("1").should == entry
    end
  end
end
