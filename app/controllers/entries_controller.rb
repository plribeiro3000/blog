class EntriesController < ApplicationController
  def index
    @entries = EntryService.index
    respond_with(@entries)
  end

  def show
    @entry = EntryService.find(params[:id])
    respond_with(@entry)
  end

  def new
    @entry = EntryService.new
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
    @entry = EntryService.update(params[:id], params[:entry])
    respond_with(@entry)
  end

  def destroy
    @entry = EntryService.destroy(params[:id])
    respond_with(@entry)
  end
end
