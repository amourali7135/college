class ApplicationsController < ApplicationController
  before_action :set_program, only: %i[show edit update destroy]
  before action :set_application, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]


  def new
    @application = Application.new
  end

  def create
    @application = Application.new(application_params)
    @program = Program.find(params[:program_id])
    @application.program = @program
    if @application.save
      flash[:notice] = "You've successfully submitted your application!"
      redirect_to user_dashboard_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @application.update(application_params)
      flash[:notice] = "You've successfully updated your application"
      redirect_to user_dashboard_path
    else
      flash[:error] = 'There was an error, please try again!'
      render 'edit'
    end
  end

  def show
  end

  def destroy
    @application.destroy
    flash[:notice] = 'Your application was successfully deleted!'
    redirect_to @application.program
  end

  private

  def set_program
    @program = Program.find(params[:id])
  end

  def set_application
    @application = Application.find(params[:id])
  end

  def application_params
    params
      .require(:application)
      .permit(
        :essay_question_one,
        :first_essay,
        :essay_question_two,
        :second_essay,
        :essay_question_three,
        :third_essay,
        :status,
      )
  end
end
