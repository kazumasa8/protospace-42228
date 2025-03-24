class CommentsController < ApplicationController
  def create
    @prototype = Prototype.find(params[:prototype_id])
    @comment = @prototype.comments.build(comment_params)

    if @comment.save
      redirect_to prototype_path(@prototype), notice:
    else
      @comments = @prototype.comments.includes(:user)
      render "prototypes/show"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
  end

end
