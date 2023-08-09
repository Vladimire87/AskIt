class QuestionsController < ApplicationController
  before_action :set_question, only: %i[show destroy edit update]

  def index
    @questions = Question.all
  end

  def show
    return unless @question.nil?

    redirect_to questions_path
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new question_params
    if @question.save
      flash[:success] = "Question created!"
      redirect_to questions_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @question.update question_params
      flash[:success] = "Question updated!"
      redirect_to questions_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @question.destroy
    flash[:success] = "Question deleted!"
    redirect_to question_path
  end

  private

  def question_params
    params.require(:question).permit(:title, :body)
  end

  def set_question
    @question = Question.find params[:id]
  end
end
