class Program < ApplicationRecord
  belongs_to :user
  has_many :applications

  validates :title, presence: true, length: { minimum: 10 }
  validates :headline, presence: true, length: { minimum: 10 }
  validates :description, presence: true, length: { minimum: 10, maximum: 1500 }
  validates :application_due_date, presence: true, if: :rolling
  validates :location, presence: true
  validates :spots, presence: true
  validates :requirements, presence: true, length: { minimum: 10 }
  validates :length, presence: true
  validates :minimum_age, presence: true, length: { minimum: 12 }
  validates :visa_sponsorship, inclusion: [true, false], exclusion: [nil]
  validates :start_date, presence: true, if: :rolling?
  validates :virtual_components, inclusion: [true, false], exclusion: [nil]
  validates :housing_provided, inclusion: [true, false], exclusion: [nil]
  validates :essay_one_needed, inclusion: [true, false], exclusion: [nil]
  validates :essay_two_needed, inclusion: [true, false], exclusion: [nil]
  validates :essay_three_needed, inclusion: [true, false], exclusion: [nil]
  validates :essay_question_one, presence: true, if: :essay_one?
  validates :essay_question_two, presence: true, if: :essay_two?
  validates :essay_question_three, presence: true, if: :essay_three?
  validates :salary, inclusion: [true, false], exclusion: [nil]
  validates :salary_paid, presence: true, if: :salary?
  validates :cost, presence: true
  validates :certificate_awarded, inclusion: [true, false], exclusion: [nil]
  validates :nationals_only, inclusion: [true, false], exclusion: [nil]
  validates :active, inclusion: [true, false], exclusion: [nil]
  validates :time_requirement, presence: true
  validates :job_guaranteed, inclusion: [true, false], exclusion: [nil]
  validates :category, presence: true
  validates :relocation_assistance, inclusion: [true, false], exclusion: [nil]

  def self.categories
    []
  end

  def self.length
    ['1-2 weeks', '2-4 weeks', '1 month', '1-2 months', '2-3 months', '3-6 months', '6-12 months', '12-18 months', '18-24 months', '24-36 months', '36+ months']
  end

  def self.time_requirement
    ['Part-time', 'Full-time', 'Varies']
  end

  def active
    @programs = Program.where(status: :active)
  end

  def salary?
    return true if params[:salary] == true
  end

  def essay_one?
    return true if params[:essay_one_needed] == true
  end

  def essay_two?
    return true if params[:essay_two_needed] == true
  end

  def essay_three?
    return true if params[:essay_three_needed] == true
  end

  def rolling?
    return true if params[:rolling] != true
  end
  
end
