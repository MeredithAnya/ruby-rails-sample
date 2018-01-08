class WelcomeController < ApplicationController

  def index
    @user = "meredith"
    @person = 'meredith'
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

  def new
    @welcome = 'meredith'
    render :new
  end

  def create
    begin
      raise 'darn'
    rescue => detail
      Raven.captureException(detail)
    end
  end

  def show
    begin
      raise "meow"
    rescue => detail
      Raven.annotate_exception(detail, {
        extra: { "searchParams":{"cashoutOnly":true},
        "url":"https://obgapi.bpsgameserver.com/api/sb/v1/open-coupons/",
        "search":{"queryEncoder":{},"paramsMap":{},"rawParams":""},
        "OverridesBaseUrl":true,
        "headers":{"brandId":["11a81f20-a960-49e4-8748-51f750c1b27c"],
          "Content-Type":["application/json"],
          "marketCode":["en"],
          "sportsbookToken":["ew0KICAiYWxnIjogIkhTMjU2IiwNCiAgInR5cCI6ICJKV1QiDQp9.ew0KICAidG9rZW4iOiAiZDE0MDllMjktODAyYS00ZjJmLTlkMDYtZTM1MTA5ZDg2ZTgzIiwNCiAgInNlZ21lbnRJZCI6ICI1MjEiLA0KICAibWVyY2hhbnRJZCI6IG51bGwNCn0.XTSjWTGU2bOhf7np00E5XINrF8oYBdzM63BlAmiWOWo"],
          "sessionToken":["ew0KICAiYWxnIjogIkhTMjU2IiwNCiAgInR5cCI6ICJKV1QiDQp9.ew0KICAidXNlcklkIjogIjk3OWE0YzRlLTA4NDQtNDY2OS05ZDgxLWZmZTVjNGIwYWI4YSIsDQogICJsb2dpblNlc3Npb25JZCI6ICJkYjBmMTZhZC03YTk3LTQwYTYtYjRiMy0zMzJkYzRhYmE1N2QiLA0KICAianVyaXNkaWN0aW9uIjogIlVua25vd24iDQp9.cEYql5F86g2E5V7wfGjuMOOcKYteFiVNaojxyq8rBSw"]}
        },
        tags: {hi: 'merdith'}})
      Raven.captureException(detail)
    else
      render :show
    end
  end
end
