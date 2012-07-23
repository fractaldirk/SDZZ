class StorycommentsController < ApplicationController
  def create
    @story = Story.find(params[:story_id])
    @storycomment = @story.storycomments.create(params[:storycomment])
    redirect_to story_path(@story), notice: 'Wauw, wat een pareltje, lekkur!'
  end
 
  def destroy
    @story = Story.find(params[:story_id])
    @storycomment = @story.storycomments.find(params[:id])
    @storycomment.destroy
    redirect_to story_path(@story)
  end
end
