class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about, :help, :contact, :team, :blog, :career, :businesses, :registration ]

  def home
  end

  def about
  end

  def help
  end

  def contact
  end

  def business_dashboard
    @programs = Program.where(user_id: current_user.id).includes([:user])
    if !current_user.Employer?
      flash[:notice] = "Only employers can access a business dashboard"
      redirect_to root_path
    end
  end
  
  def user_dashboard
  @applications = Application.where(user_id: current_user.id)#.includes([:program])
  
    if !current_user || current_user.Employer?
      flash[:notice] = "Only students can access a user dashboard"
      redirect_to root_path
    end
    # raise
  end

  def team
  end

  def blog
  end

  def career
  end

  def businesses
    @users = User.where(emplopyer: true)
  end

end

