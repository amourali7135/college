class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :programs
  has_many :applications

  enum user_type: { Employer: 0, Student: 1 }#, default: :nil

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :location, presence: true
  validates :organization_name, presence: true, if: :Employer?#, if: :employer_application?
  #Is age necessary though?  Fuark.  
  validates :age, presence: true, numericality: { only_integer: true }, if: :Student?# :student_application?
  validates :user_type, presence: true

  # def employer_application?
  #   return true if params[:employer] == true
  # end

  # def student_application?
  #   return true if params[:employer] != true
  # end
         
end
