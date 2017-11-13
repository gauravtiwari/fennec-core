class DirectorController < ActionController::Base
  protect_from_forgery with: :exception
  layout 'director'

  # before_action :authenticate_user_from_token!

  before_action :authenticate_user!
  before_action :set_title

  def set_title
    @title = "No Title"
  end

  #def authenticate_user_from_token!
  #  user_token = params[:user_token].presence
  #  user = user_token && User.find_by_authentication_token(user_token.to_s)
  #
  #  if user
  #    # Notice we are passing store false, so the user is not
  #    # actually stored in the session and a token is needed
  #    # for every request. If you want the token to work as a
  #    # sign in token, you can simply remove store: false.
  #    sign_in user, store: false
  #  end
  #end

end
