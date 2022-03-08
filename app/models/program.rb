class Program < ApplicationRecord
  belongs_to :user
  has_many :applications

  validates :title, presence: true
  validates :headline, presence: true
  validates :description, presence: true, length: { minimum: 10, maximum: 1500 }
  validates :application_due_date, presence: true, if: !@program.rolling?
  validates :location, presence: true
  validates :spots, presence: true
  validates :requirements, presence: true
  validates :length, presence: true
  validates :minimum_age, presence: true
  validates :visa_sponsorship, inclusion: [true, false], exclusion: [nil]
  validates :start_date, presence: true
  validates :virtual_components, inclusion: [true, false], exclusion: [nil]
  validates :housing_provided, inclusion: [true, false], exclusion: [nil]
  validates :essay, inclusion: [true, false], exclusion: [nil]
  validates :essay_question_one, presence: true, if: @program.essay == true
  validates :essay_question_two
  validates :essay_question_three
  validates :salary, inclusion: [true, false], exclusion: [nil]
  validates :salary_paid, presence: true, if: @program.salary
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
    []
  end
end
