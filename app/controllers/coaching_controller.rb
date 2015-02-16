class CoachingController < ApplicationController

  def answer
  @query = params[:query]
    if @query.upcase == "I am going to work right now!".upcase
      @coach_answer = ""

    elsif (@query == @query.upcase)
      @coach_answer = "I can feel your motivation!" + " " + answer_enhanced(@query)

    else
      answer_enhanced(@query)
    end
  end

  def answer_enhanced(query)
    if query == "I am going to work right now!"
      @coach_answer = ''

    elsif query.chars.last == "?"
      @coach_answer = "Silly question, get dressed and go to work!"

    else
      @coach_answer = "I don't care, get dressed and go to work!"

    end
  end




  def ask
  end

end
