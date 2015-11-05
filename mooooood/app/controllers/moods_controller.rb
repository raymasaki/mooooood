class MoodsController < ApplicationController
  def index
    @moods = Mood.all
  end

  def new
    @mood = Mood.new
  end

  def create
    @mood = Mood.create(mood_params)

    redirect_to moods_path
  end

  private

  def mood_params
    params.require(:mood).permit(:emotion, :is_private, :user_id)
  end
end
