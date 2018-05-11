class QuestionsController < ApplicationController

  def seconds_conversion(minutes, seconds)
    minutes = minutes * 60
    total = minutes + seconds
  end

  def pace_answer
    @minutes = params[:minutes].to_i
    @seconds = params[:seconds].to_i
    @distance = params[:distance].to_f
    total_seconds = seconds_conversion(@minutes, @seconds)
    total = total_seconds / @distance
    @minutes = total / 60
    @minutes = @minutes.round
    @seconds = total % 1
    @seconds = @seconds * 60
    @seconds = @seconds.round
  end
end
