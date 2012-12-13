class AuthenticationController < ApplicationController
  def login

  end

  def authenticate
    user =  User.where("name = ? AND password = ?", params[:name], params[:password])
    if user.size == 0
      redirect_to :controller => 'authentication', :action => 'failed'
    else
      session[:authenticated] = true
      redirect_to :controller => 'authentication', :action => 'success'
    end
  end


  def logout
    session[:authenticated] = nil
    redirect_to :controller => 'authentication', :action => 'login'
  end

  def failed

  end

  def success

  end
end
