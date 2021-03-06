class StatusCommentsController < ApplicationController
  respond_to :html, :json

  def create
    @status_comment = StatusComment.create! status_comment_params
    respond_to do |format|
      format.html { }
      format.js
    end
  end

  def update
    @status_comment = StatusComment.find params[:id]
    @status_comment.update_attributes status_comment_params
    respond_with @status_comment
  end

  def destroy
    @status_comment = StatusComment.find params[:id]
    @status_comment.destroy
    redirect_to :back
  end

  private
  def status_comment_params
    params.require(:status_comment).permit :status_id, :user_id, :content
  end
end
