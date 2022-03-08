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
  validates :organization_name, presence: true, if: :employer_application?
  validates :location, presence: true

  def employer_application?
    return true if params[:employer] == true
  end
         
end
