class ItemsController < ApplicationController
  
  before_filter :authenticate_user!
  
  def edit
    @guide = current_user.guide(params[:guide_id])
    @item = @guide.items.find(params[:id])
  end
  
  def update
    @guide = current_user.guide(params[:guide_id])
    @item = @guide.items.find(params[:id])
    @item.name = params[:item][:name]
    
    if params[:item][:name] == ""
      @item.name = nil
    end
    
    @item.description = params[:item][:description]
    @item.address = params[:item][:address]    
    @item.latlon = params[:item][:latlon]
    @item.save
    redirect_to guide_path(@item.guide)
  end
  
end
