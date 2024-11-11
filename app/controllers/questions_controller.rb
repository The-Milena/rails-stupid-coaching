class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:question]
      @answer = params[:question]
    end

    if @answer == "I am going to work"
      @reply = "Great"
    elsif @answer.include?('?')
      @reply = "Silly question, get dressed and go to work!"
    else @reply = "I don't care, get dressed and go to work!"
    end
  end
end
