class HomeController < ApplicationController
  def index
   @user_mail = current_user.email.split('@')
   @user_mail = @user_mail[0].upcase_first
  end
end
