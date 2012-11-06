class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :get_entries

  def index

  end

  def get_entries
    @recent_entries = Entry.all(:order => "id desc", :limit => 5)
  end

end
