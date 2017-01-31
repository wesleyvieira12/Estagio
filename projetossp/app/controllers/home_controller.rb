class HomeController < ApplicationController
  skip_before_filter :authenticate_user!
  skip_after_action :verify_authorized
  
  def index
  	@users = User.last(10)
  	@reports = Report.last(10)
    @reports = Request_criminal.last(10)
  end

  def about
  end

  def contact
  end
  
end
