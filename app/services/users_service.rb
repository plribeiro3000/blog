module UsersService
  include Zertico::Service

  def generate
    @user = UserOrganizer.perform(user_params)
    @options = { location: users_path }
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :entry_title, :entry_content)
  end
end