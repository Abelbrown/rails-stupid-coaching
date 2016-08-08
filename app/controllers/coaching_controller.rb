class CoachingController < ApplicationController
  def answer
    @question = params[:query]
    @answer = coach_answer(@question)
  end

  def ask

  end

  private

  def coach_answer(question)
   if question.downcase == "I am going to work right now!"
    "Good job"
   elsif question.end_with?("?")
     "Silly question, get dressed and go to work!"
   else
     "I don't care, get dressed and go to work!"
   end
  end


  def coach_answer_enhanced(question)
   answer = coach_answer(question)
   if answer != ""
     if question.upcase == question
       "I can feel your motivation! #{answer}"
     else
       answer
     end
   else
     ""
   end
  end
end