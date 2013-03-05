class Admin::EntriesController < Admin::AuthorizedController
  def index
    @entries = EntryService.index
  end

  def show
    @entry = EntryService.find(params[:id])
  end

  def new
    @entry = EntryService.new
  end

  def edit
    @entry = EntryService.find(params[:id])
  end

  def create
    @entry = EntryService.create(params[:entry])
    respond_with('admin', @entry)
  end

  def update
    @entry = EntryService.update(params[:id], params[:entry])
    respond_with('admin', @entry)
  end

  def destroy
    @entry = EntryService.destroy(params[:id])
    respond_with('admin', @entry)
  end
end
