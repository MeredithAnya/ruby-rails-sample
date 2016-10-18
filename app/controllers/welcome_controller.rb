class WelcomeController < ApplicationController

  def index
    @user = "meredith"
    render :index
  end

  def show
  end
end
