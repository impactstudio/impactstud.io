class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  before_filter :get_random_phone_number

  def get_random_phone_number
    @phone_number = ["970-462-9768","970-460-4255"].sample
  end

  def user_not_authorized
    unless current_user
      flash[:warning] = "You are not authorized to perform this action."
      redirect_to(request.referrer || root_path)
    end
  end

  def dashboard
  end
end
