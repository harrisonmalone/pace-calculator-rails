class QuestionsController < ApplicationController

  def seconds_conversion(minutes, seconds)
    minutes = minutes * 60
    total = minutes + seconds
  end

  def pace_answer
    @minutes = params[:minutes].to_i
    @seconds = params[:seconds].to_i
    distance = params[:distance].to_f
    total_seconds = seconds_conversion(@minutes, @seconds)
    total = total_seconds / distance
    total = total / 60
    @minutes = total.floor
    @seconds = total % 1
    @seconds = @seconds * 60
    @seconds = @seconds.round
  end

  def distance_answer
    minutes = params[:minutes].to_i
    seconds = params[:seconds].to_i
    total_seconds = seconds_conversion(minutes, seconds)
    pace_minutes = params[:pace_minutes].to_i
    pace_seconds = params[:pace_seconds].to_i
    total_pace_seconds = seconds_conversion(pace_minutes, pace_seconds)
    @total = total_seconds.to_f / total_pace_seconds
    @total = @total.round(2)
  end

  def time_answer
    pace_minutes = params[:pace_minutes].to_i
    pace_seconds = params[:pace_seconds].to_i
    total_pace_seconds = seconds_conversion(pace_minutes, pace_seconds)
    distance = params[:distance].to_f
    total = total_pace_seconds * distance
    total = total / 60
    @minutes = total.floor
    @seconds = total % 1
    @seconds = @seconds * 60
    @seconds = @seconds.round
  end
end
