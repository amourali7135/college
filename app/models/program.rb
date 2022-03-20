class Program < ApplicationRecord
  belongs_to :user
  has_many :applications

  validates :title, presence: true, length: { minimum: 10 }
  validates :headline, presence: true, length: { minimum: 10 }
  validates :description, presence: true, length: { minimum: 10, maximum: 1500 }
  validates :application_due_date, presence: true, if: :rolling?
  validates :start_date, presence: true, if: :rolling?
  validates :location, presence: true
  validates :spots, presence: true
  validates :requirements, presence: true, length: { minimum: 10 }
  validates :length, presence: true
  validates :minimum_age, presence: true, numericality: { only_integer: true,  greater_than: 12 }
  validates :visa_sponsorship, inclusion: [true, false], exclusion: [nil]
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
  # validates :active, inclusion: [true, false], exclusion: [nil]
  validates :time_requirement, presence: true
  validates :job_guaranteed, inclusion: [true, false], exclusion: [nil]
  validates :category, presence: true
  validates :relocation_assistance, inclusion: [true, false], exclusion: [nil]
  # validates :application_due_date, :future_date
  validate :future_date_application?
  validate :future_date_start?, if: :rolling?

  enum status: { Active: 0, Temporarily_paused: 1, Permanently_closed: 2 }# _default: 0

  def self.category
    ['Air conditioning and heating', 'Carpeting', 'Construction', 'Food prep', 'Health care and medicine', 'Hospitality', 'HVAC', 'IT', 'Military', 'Software engineering', ]
  end

  def self.length
    ['Less than one week', '1-2 weeks', '2-4 weeks', '1 month', '1-2 months', '2-3 months', '3-6 months', '6-12 months', '12-18 months', '18-24 months', '24-36 months', '36+ months']
  end

  def self.time_requirement
    ['Part-time', 'Full-time', 'Varies']
  end

  def active
    @programs = Program.where(status: "Active")
  end

  def salary?
    return true if salary == true
  end

  def essay_one?
    return true if essay_one_needed == true
  end

  def essay_two?
    return true if essay_two_needed == true
  end

  def essay_three?
    return true if essay_three_needed == true
  end

  def rolling?
    return true if rolling == false
  end

  def future_date_application?
    if application_due_date < Date.today
      errors.add(:application_due_date, "The due date must be in the future!")
    end
  end

  def future_date_start?
    if start_date < Date.today
      errors.add(:start_date, "The start date must be in the future!")
    end
  end

  # def auto_finish
  #   if application_due_date > Date.today
  #     @program.status.Permanently_closed!
  #     ...set this up as a que job for later.
  #   end
  # end

end
