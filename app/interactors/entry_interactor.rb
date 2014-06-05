class EntryInteractor < Zertico::Interactor
  def perform(params)
    @entry = Entry.new(params)
    @entry.user =  @user
    @entry.save
  end

  def rollback
    @entry.delete
  end
end