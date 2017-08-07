class QuestionsController < ApplicationController
  def answer
    @question = params["display_answer"]
  end

  def ask
  end
end
