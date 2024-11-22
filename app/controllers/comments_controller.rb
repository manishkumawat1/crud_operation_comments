class CommentsController < ApplicationController
  def create
    @bloge = Bloge.find(params[:bloge_id])
    @comment = @bloge.comments.create(comment_params)
    redirect_to bloge_path(@bloge)
  end

  private

  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
