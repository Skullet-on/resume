class WelcomeController < ApplicationController
  def index
    @user = User.first
    redirect_to new_user_session_path if @user == nil
  end
end
