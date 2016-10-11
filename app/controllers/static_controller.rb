class StaticController < ApplicationController
  def home
    @projects = Project.all
  end

  def team
  end

  def services
  end

  def startproject
  end

  def portfolio
  end
end
