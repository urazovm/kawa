class ApplicationController < ActionController::Base
  before_filter :configure_sidebar
  protect_from_forgery

  add_crumb "Home", "/" 

  def wiki
    Kawa::Wiki::Engine.instance
  end

  private
    def configure_sidebar
      @sidebar = SidebarPresenter.new
    end
end
