class MoodsController < ApplicationController
  def index
    @moods = Mood.all
    @moods_private = Mood.where("is_private = false")
  end

  def new
    @mood = current_user.moods.build
  end

  def create
    # automatically sets the user to current_user
    @mood = current_user.moods.build mood_params

    if @mood.save
      redirect_to moods_path
    else
      render new_mood_path
    end

  end

  private

  def mood_params
    params.require(:mood).permit(:emotion, :is_private, :user_id)
  end
end
