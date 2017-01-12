class AuditorController < ApplicationController
  def index
    @users = User.all
  end
  
  def show 
    @user = User.find(params[:id])
    @audited = Audited::Audit.where(user_id: @user.id)
  end
  
end
