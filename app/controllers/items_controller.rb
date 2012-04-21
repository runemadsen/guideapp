class ItemsController < ApplicationController
  
  def edit
    @guide = current_user.guides.find(params[:guide_id])
    @item = @guide.items.find(params[:id])
  end
  
  def update
    @guide = current_user.guides.find(params[:guide_id])
    @item = @guide.items.find(params[:id])
    @item.name = params[:item][:name]
    @item.description = params[:item][:description]
    @item.address = params[:item][:address]
    @item.save
    redirect_to edit_guide_path(@item.guide)
  end
  
end
