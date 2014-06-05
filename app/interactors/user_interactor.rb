class UserInteractor < Zertico::Interactor
  def perform(params)
    @user = User.new(params)
    return fail! unless @user.save
    @user
  end

  def rollback
    @user.delete
  end
end