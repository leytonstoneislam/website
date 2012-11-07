class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :get_entries

  def index

  end

  def get_entries
    @recent_entries = Entry.all(:order => "id desc", :limit => 5)
  end

  def validate_authentication
    if session[:authenticated].nil?
      redirect_to :controller => 'authentication', :action => 'login'
    end
  end

end
