class GuidesController < ApplicationController
  
  def new
    @guide = current_user.guides.build
  end
  
  def create
    # create guide
    @guide = current_user.guides.new
    @guide.title = params[:guide][:title]
    @guide.description = params[:guide][:description]
    @guide.save
    # create 8 empty items in guide
    @guide.items.create([{}, {}, {}, {}, {}, {}, {}, {}])
    redirect_to edit_guide_path(@guide)
  end
  
  def edit
    @guide = Guide.find(params[:id])
  end
  
  def show
    @guide = Guide.find(params[:id])
  end
  
end
