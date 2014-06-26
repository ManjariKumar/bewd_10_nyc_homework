class StoriesController < ApplicationController
  
  # before_action :authenticate_user! placed inside App Cntrlr
  skip_before_action :authenticate_user!, only: :index
  
  # before_filter :load_resources, only: [:show, :new]
  
  

  def index
  	@stories = Story.all
  	@stories = Story.search_for(params[:q]) || Story.all
  end

  def show
    @story = Story.find(params[:id])
  end


  def new
  	@story = Story.new
  end

  def create
  	@story = Story.new(story_params)
  	if 
  	  @story.save
  	  redirect_to @story
    else
  	 render 'new'
    end
  end

  private
  def load_resources
	@story= Story.find(params[:id])
  end

  def story_params
  	params.require(:story).permit(:title, :link, :category, :upvotes)
  end
end
