class UserInteractor < Zertico::Interactor
  def perform(params)
    @user = User.create(params)
  end

  def rollback
    @user.delete
  end
end