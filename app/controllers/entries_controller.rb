class EntriesController < ApplicationController
  def index
    @entries = Entry.all
    respond_with(@entries)
  end

  def show
    @entry = Entry.find(params[:id])
    respond_with(@entry)
  end

  def new
    @entry = Entry.new
    respond_with(@entry)
  end

  def edit
    @entry = Entry.find(params[:id])
    respond_with(@entry)
  end

  def create
    @entry = Entry.create(params[:entry])
    respond_with(@entry)
  end

  def update
    @entry = Entry.find(params[:id])
    @entry.update_attributes(params[:entry])
    respond_with(@entry)
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy
    respond_with(@entry)
  end
end
