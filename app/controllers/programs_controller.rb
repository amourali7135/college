class ProgramsController < ApplicationController
  before_action :set_program, only: %i[show edit update destroy]

  def index
    @programs = Program.where(active: true)
  end

  def new
    @program = Program.new
  end

  def create
    @program = Program.new(program_params)
    if @program.save
      flash[:notice] = "Your program was successfully created!"
      redirect_to @program
    else
      flash[:error] = "There was an error, please try again!"
      render "new"
    end
  end

  def show
    # @program = Program.find(params[:id])
  end

  def update
    # @program = program.find(params[:id])
    if @program.update(program_params)
      flash[:notice] = "You've successfully updated your program!"
      redirect_to @program # or dashboard?
    else
      flash[:error] = "There was an error, please try again!"
      render 'edit'
    end
  end

  def destroy
    # @program = program.find(params[:id])
    @program.destroy
    flash[:notice] = "This program was successfully deleted!"
    redirect_to business_dashboard_path
  end

  def edit
    # @program = program.find(params[:id])
  end

  private

  def set_program
    @program = Program.find(params[:id])
  end

  def program_params
    params.require(:program).permit(:title, :headline, :description, :rolling, :application_due_date, :location,
                                    :remote, :spots, :requirements, :length, :minimum_age, :visa_sponsorship, :start_date, :virtual_components, :housing_provided, :essay, :essay_question_one, :essay_question_two, :essay_question_three, :salary, :salary_paid, :cost, :certificate_awarded, :nationals_only, :active, :time_requirement, :job_guaranteed, :category, :relocation_assistance)
  end
end
