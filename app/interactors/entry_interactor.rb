class EntryInteractor < Zertico::Interactor
  def perform(params = nil)
    @entry = Entry.new
    @entry.title = params[:entry_title]
    @entry.content = params[:entry_content]
    fail! unless @entry.save
    @entry
  end
end