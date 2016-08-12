class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def user_not_authorized
    if current_user
      if current_user.email == "jwodke@outlook.com"
        flash[:warning] = "You suck!"
        redirect_to(request.referrer || root_path)
      else
        flash[:warning] = "You are not authorized to perform this action."
        redirect_to(request.referrer || root_path)
      end
    else
      redirect_to(request.referrer || root_path)
    end
  end
end
