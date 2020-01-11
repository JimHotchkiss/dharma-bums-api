module Api::V1
  class MeditationsController < ApplicationController
    def index
      @meditation = Meditation.all
      render json: { status: 'SUCCESS', message: 'loaded posts', data: @meditation }
    end 

    def show 
      @meditation = Meditation.find(params[:id])
      render json: @meditation.to_json(only: [:theme, :duration, :organizer, :id],
      include: [comments: { only: [:content]}])
    end 

    def create 
      @meditation = Meditation.new(meditation_params)
      if @meditation.save
        render json: { status: 'SUCCESS', message: 'loaded posts', data: @meditation }
      else 
        render json: { status: 'ERROR', message: 'post not saved', data: @meditation.errors }
      end 
    end 
    
    def destroy
      @meditation = Meditation.find(params[:id])
      @meditation.destroy
      render json: { status: 'ERROR', message: 'post not saved', data: post.errors }
    end 
    
    # Maybe later include update

    private
    def meditation_params
      params.require(:meditation).permit(:theme, :duration, :organizer)
    end 

  end
end 
