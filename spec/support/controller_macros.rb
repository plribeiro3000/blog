module ControllerMacros
  def authenticate_user!
    @request.env["devise.mapping"] = Devise.mappings[:user]
    sign_in User.create( :email => "test@example.com",
                         :password => "12345678",
                         :password_confirmation => "12345678" )
  end
end
