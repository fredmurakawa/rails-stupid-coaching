class QuestionsController < ApplicationController
  def answer
    @query = params[:query]
    @message = ""

    if @query == "I AM GOING TO WORK RIGHT NOW!"
      @message = "Good job!"
    elsif @query == @query.upcase
      @message = "I can feel your motivation! #{coach_answer(@query)}"
    else
      @message = coach_answer(@query)
    end
  end

  def ask
  end

  private

  def coach_answer(your_message)
    # TODO: return coach answer to your_message
    if your_message == "I am going to work right now!"
      return "Good job!"
    elsif your_message.include? "?"
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end
end
