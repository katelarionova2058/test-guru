class Answer < ApplicationRecord
  belongs_to :question

  scope :correct, -> { where(correct: true) }

  validate :val_num_of_answers

  def val_num_of_answers
    errors.add(:question, 'Количество ответов должно быть не больше 4-х') if question.answers.count >= 4
  end
end
