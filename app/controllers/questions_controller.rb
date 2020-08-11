class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:answer]
    if @question.downcase == 'i am going to work right now!'
      @coach_answer = 'Great'
    elsif @question.end_with?('?')
      @coach_answer = 'Silly question, get dressed and go to work!'
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end
end
