class WelcomeController < ApplicationController

  def index
    @user = "meredith"
    # begin
    #   1 / 0
    # rescue StandardError => detail
    #   Raven.captureException(detail)
    #   flash[:sentry_event_id] = Raven.last_event_id()
    # else
    #   render :index
    # end
    render :index
  end

  def show
    begin
      raise "meow"
    rescue => detail
      Raven.annotate_exception(detail, {
          :user => {'person' => 1},
          tags: {
            meow: "cat"
          }
        })
      Raven.captureException(detail)
    else
      render :show
    end
  end
end
