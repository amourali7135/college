class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about, :help, :contact, :team, :blog, :career, :businesses ]

  def home
  end

  def about
  end

  def help
  end

  def contact
  end

  def business_dashboard
    if !current_user.employer?
      redirect_to root_path
      #flash here
    end
  end
  
  def user_dashboard
    if !current_user || current_user.employer?
      redirect_to root_path
      #flash message later here.
    end
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

