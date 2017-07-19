class ForumController < ApplicationController
  def index
    @questions = Question.all
    Question.includes(:users).all
  end

  def question
    content = params["question"]["content"]
    @new_ques = current_user.questions.create(:content => content)

    respond_to do |format|

      format.js{}

    end

  end

  def answer

    content = params["answer"]["content"]
    ques_id = params["answer"]["question_id"]
    current_user.answers.create(:content => content , :question_id => ques_id)
    redirect_to "/forum/answer/#{ques_id}"

  end

  def show_answer
    @question = Question.find(params[:id])
    @answers = @question.answers
  end

end
