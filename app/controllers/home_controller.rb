class HomeController < ApplicationController
  before_filter :get_homepage_entries

  def index

  end

  def get_homepage_entries
    @homepage_entries = Homepageentry.all(:order => "id asc")
  end


  def index

  end

  def prayer_times
  end

  def visit_us

  end

  def contact_us

  end

  def madrasah

  end

  def services

  end
end
