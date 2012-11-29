class EntriesController < ApplicationController
  def index
    @entries = EntryService.all
    respond_with(@entries)
  end

  def show
    @entry = EntryService.find(params[:id])
    respond_with(@entry)
  end

  def new
    @entry = Entry.new
    respond_with(@entry)
  end

  def edit
    @entry = EntryService.find(params[:id])
    respond_with(@entry)
  end

  def create
    @entry = EntryService.create(params[:entry])
    respond_with(@entry)
  end

  def update
    @entry_service = EntryService.new(params[:id])
    @entry = @entry_service.update_attributes(params[:entry])
    respond_with(@entry)
  end

  def destroy
    @entry_service = EntryService.new(params[:id])
    @entry = @entry_service.destroy
    respond_with(@entry)
  end
end
