class WelcomeController < ApplicationController

  def index
    @user = "meredith"
    begin
      1 / 0
    rescue StandardError => detail
      Raven.captureException(detail)
      flash[:sentry_event_id] = Raven.last_event_id()
    else
      render :index
    end
  end

  def show
  end
end
