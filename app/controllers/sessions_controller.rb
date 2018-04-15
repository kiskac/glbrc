class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(login: params[:session][:login].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      flash.now[:danger] = 'Invalid email/password combination'
      #render 'new'
    end
  end  
  
end
