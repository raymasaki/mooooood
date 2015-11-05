class MoodsController < ApplicationController
  def index
    @moods = Mood.all
  end

  def new
  end
end
