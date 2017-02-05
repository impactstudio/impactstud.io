class PokemonCenter::DashboardController < ApplicationController
  before_filter :authenticate_user!
  layout 'dashboard'

  def index
    @user = current_user
  end
end
