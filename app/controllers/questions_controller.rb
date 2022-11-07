class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @input = params[:input]
    @answer = coach_answer(@input)
  end

  private

  def coach_answer(input)
    input = input.downcase
    if input.end_with?("?")
      "Silly question, get dressed and go to work!"
    elsif input === "i am going to work"
      "Great!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
