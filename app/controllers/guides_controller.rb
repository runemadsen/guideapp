class GuidesController < ApplicationController
  
  before_filter :authenticate_user!, :only => [:new, :create, :edit, :update]
  
  def new
    @guide = current_user.guides.build
  end
  
  def create
    # create guide
    @guide = current_user.guides.new
    @guide.title = params[:guide][:title]
    @guide.description = params[:guide][:description]
    @guide.public_edit = params[:guide][:public_edit]
    @guide.save
    # create 6 empty items in guide
    @guide.items.create([{}, {}, {}, {}, {}, {}])
    redirect_to guide_path(@guide)
  end
  
  def update
    @guide = current_user.guide(params[:id])
    @guide.title = params[:guide][:title]
    @guide.description = params[:guide][:description]
    @guide.public_edit = params[:guide][:public_edit]
    @guide.save
    redirect_to guide_path(@guide)
  end
  
  def edit
    @guide = current_user.guide(params[:id])
  end
  
  def show
    @guide = Guide.find(params[:id])
    @show_print = true#!@guide.belongs_to?(current_user)
  end
  
end
