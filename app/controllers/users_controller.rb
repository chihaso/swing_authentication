class UsersController < ApplicationController
  before_action :redirect_not_logged_in_user_to_home

  def index
    @users = User.all
  end

  private

  def redirect_not_logged_in_user_to_home
    unless user_signed_in?
      redirect_to new_user_session_path
    end
  end
end
