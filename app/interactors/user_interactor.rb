class UserInteractor < Zertico::Interactor
  def perform(params)
    @user = User.new(params)
    fail! unless @user.save
    @user
  end

  def rollback
    @user.delete
  end
end