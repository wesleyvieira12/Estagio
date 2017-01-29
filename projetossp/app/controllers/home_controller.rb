class HomeController < ApplicationController
  skip_before_filter :authenticate_user!
  skip_after_action :verify_authorized
  
  def index
  end

  def about
  end

  def contact
  end
  
end
