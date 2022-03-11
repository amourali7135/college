class Application < ApplicationRecord
  belongs_to :program
  belongs_to :user

  enum :status, { pending: 0, interested: 1, rejected: 2, accepted: 3 }, default: :pending

  validates :first_essay, length: {minimum: 50, maximum: 1500}, presence: true, if: :essay_one?
  validates :second_essay, length: {minimum: 50, maximum: 1500}, presence: true, if: :essay_two?
  validates :third_essay, length: {minimum: 50, maximum: 1500}, presence: true, if: :essay_three

  def essay_one?
    return true if params[:essay_one_needed] == true
  end

  def essay_two?
    return true if params[:essay_two_needed] == true
  end

  def essay_three?
    return true if params[:essay_three_needed] == true
  end
end
