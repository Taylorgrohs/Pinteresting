class CommentsController < ApplicationController
	def new
    @pin = current_user.pins.build
  end


	def create
  @pin = Pin.find(params[:pin_id])
  @comment = @pin.comments.create(comment_params)
  if @comment.save
    redirect_to @pin
  else
    flash.now[:danger] = "error"
  end
	def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to pins_url, notice: 'Comment was successfully destroyed.' }
    end 
  end
  end

end

	def comment_params
		params.require(:comment).permit(:body, :pin, :commenter)
	end
	

