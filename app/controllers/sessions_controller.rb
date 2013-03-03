class SessionsController < ApplicationController
 
  skip_before_filter :require_login, :only => [:new, :create]

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id

      redirect_to sites_url, notice: "Logged in!"
    else
      flash.now.alert = "Email or password is incorrect"
      render "new"
    end
  end

  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  def destroy
    reset_session
    redirect_to login_url, :notice => "Logged out!"
  end
end

