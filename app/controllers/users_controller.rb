class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @apps = []
    
    if @user.default_layout
      @apps = App.order(:default_position)
    else
      @userapps = @user.user_apps.order(:order)
      @userapps.each do |ua|
         @apps.push(App.find(ua.app_id))
      end
    end
  end
  
  def new
    @user = user.new
  end
  
  def sort
    params[:app].each_with_index do |id, index|
      UserApp.where(app_id: id).where(user_id: current_user).update_all(order: index + 1)
      User.update_all(default_layout: false)
    end
    
    head :ok
  end
  
  def add
    App.find(params[:link_id]).user_apps.where(user_id: current_user).update_all(visible: !:visible)
    User.update_all(default_layout: false)
  end
  
end
