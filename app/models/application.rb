class Application < ApplicationRecord
  belongs_to :program
  belongs_to :user

  enum :status, { pending: 0, interested: 1, rejected: 2, accepted: 3 }, default: :pending

  validates :first_essay, length: {minimum: 50, maximum: 1500}, presence: true, if: @program.essay_question_one.present?
  validates :second_essay, length: {minimum: 50, maximum: 1500}, presence: true, if: @program.essay_question_two.present?
  validates :third_essay, length: {minimum: 50, maximum: 1500}, presence: true, if: @program.essay_question_three.present?

end
