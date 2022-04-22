class ProgramsController < ApplicationController
  before_action :set_program, only: %i[show edit update destroy like unlike]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    # params["search"].values !!!
    # multiple values on art project was concacetannating arrays, but one is a string...so concat won't work!  FUCK!
    if params["search"].present? && params["search"]["location"].present?
      # @filter = params["search"]["program_format"].concat([params["search"]["remote"]].to_s).concat([params["search"]["length"]].to_s).split(',').flatten.reject(&:blank?)
      @filter = [params[:search][:location], params[:search][:remote], params[:search][:length], params[:search][:program_format], params[:search][:occupation_tagging_list], params[:search][:time_requirement]].reject(&:blank?)

      @pagy, @programs = pagy(Program.global_search(@filter).where(status: :Active).includes([:user]).near(params["search"]["location"]), items: 20)
    elsif params["search"].present? 
      @filter = [params[:search][:location], params[:search][:remote], params[:search][:length], params[:search][:program_format], params[:search][:occupation_tagging_list], params[:search][:time_requirement]].reject(&:blank?)

      @pagy, @programs = pagy(Program.global_search(@filter).where(status: :Active).includes([:user]), items: 20)
      # @programs = Program.global_search(@filter).where(status: :Active)
    else
      @pagy, @programs = pagy(Program.where(status: :Active).includes([:user]), items: 20)
      # @programs = Program.where(status: :Active).includes([:user])
    end
    respond_to do |format|
      format.html
      format.js #{ render layout: false }
    end
    # raise
  end

  def new
    @program = Program.new
  end

  def create
    @program = Program.new(program_params)
    if @program.save
      flash[:notice] = 'Your program was successfully created!'
      redirect_to @program
    else
      flash[:error] = 'There was an error, please try again!'
      render 'new'
    end
    # raise
  end

  def show
    respond_to do |format|
      format.html { render 'programs/show' }
      format.js { render layout: false } # Add this line to you respond_to block
    end
  end

  def update
    if @program.update(program_params)
      flash[:notice] = "You've successfully updated your program!"
      redirect_to @program # or dashboard?
    else
      flash[:error] = 'There was an error, please try again!'
      render 'edit'
    end
  end

  def destroy
    @program.destroy
    flash[:notice] = 'This program was successfully deleted!'
    redirect_to business_dashboard_path
  end

  def edit
   
  end

  def like
    @program.liked_by current_user
    flash[:notice] =
      "You've successfully liked this program, find it in your dashboard to easily apply to later"
    redirect_to @program
  end

  def unlike
    @program.unliked_by current_user
    flash[:notice] = "You've successfully unliked this program"
    redirect_to @program
  end

  private

  def set_program
    @program = Program.find(params[:id])
  end

  def program_params
    params
      .require(:program)
      .permit(
        :title,
        :headline,
        :description,
        :rolling,
        :application_due_date,
        :location,
        :remote,
        :spots,
        :requirements,
        :length,
        :minimum_age,
        :visa_sponsorship,
        :start_date,
        :virtual_components,
        :housing_provided,
        :essay_question_one,
        :essay_question_two,
        :essay_question_three,
        :salary,
        :salary_paid,
        :cost,
        :certificate_awarded,
        :nationals_only,
        :time_requirement,
        :job_guaranteed,
        :relocation_assistance,
        :essay_one_needed,
        :essay_two_needed,
        :essay_three_needed,
        :status,
        :program_format,
        :occupation_tagging_list,
        :search
      )
  end
end
