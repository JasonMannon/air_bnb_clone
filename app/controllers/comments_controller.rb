class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to root_url, notice: "Comment has been submitted"
    else
      render "/contact"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:comment, :owner_id)
  end
end
