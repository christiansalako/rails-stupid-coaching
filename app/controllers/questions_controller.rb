class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @user_input = params[:Question]
    @coach_answer = 'Great!'
    @coach_answer2 = 'Silly question, get dressed and go to work!'
    @coach_answer3 = "I don't care, get dressed and go to work!"

    if @user_input.include? '?'
      @coach_answer = @coach_answer2
    elsif @user_input == 'I am goin to work'
      @coach_answer
    else
      @coach_answer = @coach_answer3
    end
  end

end
