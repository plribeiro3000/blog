require 'spec_helper'

describe EntriesController do
  let(:entry) { Entry.new }

  describe "#GET index" do
    before :each do
      Entry.stub(:all => [entry])
      get :index
    end

    it "should return a collection of entries" do
      assigns[:entries].should == [entry]
    end
  end

  describe "#GET show" do
    before :each do
      Entry.stub(:find).with("1").and_return(entry)
      get :show, :id => 1
    end

    it "should return the required entry" do
      assigns[:entry].should == entry
    end
  end

  describe "#GET new" do
    before :each do
      Entry.stub(:new => entry)
      get :new
    end

    it "should return a new entry" do
      assigns[:entry].should == entry
    end
  end

  describe "#GET edit" do
    before :each do
      Entry.stub(:find).with("1").and_return(entry)
      get :edit, :id => 1
    end

    it "should return the required entry" do
      assigns[:entry].should == entry
    end
  end

  describe "#POST create" do
    before :each do
      Entry.stub(:create).with({}).and_return(entry)
      post :create, :entry => {}
    end

    it "should return the created post" do
      assigns[:entry].should == entry
    end
  end

  describe "#PUT update" do
    before :each do
      Entry.stub(:find).with("1").and_return(entry)
      entry.stub(:update_attributes => true)
      put :update, :id => 1, :entry => {}
    end

    it "should return the updated post" do
      assigns[:entry].should == entry
    end
  end

  describe "#DELETE destroy" do
    before :each do
      Entry.stub(:find).with("1").and_return(entry)
      entry.stub(:destroy => true)
      delete :destroy, :id => 1
    end

    it "should return the destroyed post" do
      assigns[:entry].should == entry
    end
  end
end
