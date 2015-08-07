class CommentsController < ApplicationController
	def create
	@pin = Pin.find(params[:pin_id])
	@comment = @pin.comments.create(params[:pin])
	@pin.save
	redirect_to @pin
	end

	end

