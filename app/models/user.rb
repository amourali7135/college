class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :programs
  has_many :applications

  # validates :age, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :location, presence: true
  validates :organization_name, presence: true, if: :employer_application?
  #Is age necessary though?  Fuark.  
  validates :age, presence: true, numericality: { only_integer: true }, if: :student_application?

  def employer_application?
    return true if params[:employer] == true
  end

  def student_application?
    return true if params[:employer] != true
  end
         
end
