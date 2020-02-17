class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question == 'I am going to work'
      @question = 'Great!'
    elsif @question.include? '?'
      @question = 'Silly question, get dressed and go to work!'
    else
      @question = 'I don\'t care, get dressed and go to work!'
    end
  end

end
