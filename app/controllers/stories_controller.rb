class StoriesController < ApplicationController
  def index
    @stories = Story.all
  end

  def show
    @story = Story.find(params[:id])
    @comments = @story.comments.order("created_at DESC")
  end

  def new
    @story = Story.new
  end

  def edit
    @story = Story.find(params[:id])
  end

  def create
    @story = Story.new(story_params)
    @story.user = current_user

    if @story.save
      flash[:notice] = "Story created successfully"
      redirect_to stories_path
    else
      render :new
    end
  end

  def update
    @story = Story.find(params[:id])

    if @story.update(story_params)
      flash[:notice] = "Story updated successfully"
      redirect_to stories_path
    else
      render :edit
    end
  end

  def destroy
    @story = Story.find(params[:id])

    @story.destroy
    flash[:alert] = "Story deleted"
    redirect_to stories_path
  end

  private

  def story_params
    params.require(:story).permit(:title, :url)
  end

end
