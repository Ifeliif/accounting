class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_attr  

  private
  def set_attr
     @moe_src="/images/moe#{rand(1..9)}.png" 
  end
end
