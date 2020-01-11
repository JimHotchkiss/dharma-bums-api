module Api::V1
  class CommentsController < ApplicationController
    def index
      @comments = Comment.all
      render json: { status: 'SUCCESS', message: 'loaded comment', data: @comments }
    end 

    def show 
      @comment = Comment.find(params[:id])
      render json: @comment.to_json(only: [:content, :id],
      include: [comments: { only: [:content]}])
    end 

    def create 
      @comment = Comment.new(comment_params)
      if @comment.save
        render json: { status: 'SUCCESS', message: 'loaded comment', data: @comment }
      else 
        render json: { status: 'ERROR', message: 'comment not saved', data: @comment.errors }
      end 
    end 
    
    def destroy
      @comment = Comment.find(params[:id])
      @comment.destroy
      render json: { status: 'ERROR', message: 'comment not saved', data: @comment.errors }
    end 
    
    # Maybe later include update

    private
    def comment_params
      params.require(:comment).permit(:content)
    end
  end
end