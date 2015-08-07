class CommentsController < ApplicationController
	def create
  @pin = Pin.find(params[:pin_id])
  @comment = @pin.comments.create(comment_params)
  if @comment.save
    redirect_to @pin
  else
    flash.now[:danger] = "error"
  end
	def destroy
    @pin = Pin.find(params[:comment])
@comment = @pin.comments.find(params[:id])
###PRINT OUT @comment here ###
@comment.destroy
    redirect_to pin_path(@pin)
  end

end

	def comment_params
		params.require(:comment).permit(:body, :pin, :destroy)
	end
	end

