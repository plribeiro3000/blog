class Admin::EntriesController < Admin::AuthorizedController
  include Admin::EntryService

  def index
    @entries = all
  end

  def show
    @entry = find(params[:id])
  end

  def new
    @entry = build
  end

  def edit
    @entry = find(params[:id])
  end

  def create
    @entry = generate(params[:entry])
    respond_with('admin', @entry)
  end

  def update
    @entry = modify(params[:id], params[:entry])
    respond_with('admin', @entry)
  end

  def destroy
    @entry = delete(params[:id])
    respond_with('admin', @entry)
  end
end
