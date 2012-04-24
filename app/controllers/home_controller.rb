class HomeController < ApplicationController
  
  def index
    @guides = Guide.all(:limit => 20, :order => "created_at DESC")
  end
  
  def about
  end
  
end
