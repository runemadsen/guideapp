class AdminController < ApplicationController
  
  before_filter :authenticate_user!
  
  def index
    unless current_user.email == "rune@runemadsen.com"
      redirect_to "/"
    end
  end
  
end
