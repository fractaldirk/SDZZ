class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment])
    if current_user
    	User.delay.share_review(current_user.id, post_url(@post))
    end
    redirect_to post_path(@post), notice: "Gewoon dikke prima!"
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end
end
