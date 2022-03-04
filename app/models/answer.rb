class Answer < ApplicationRecord
  belongs_to :question

  validate :val_num_of_answers

  scope :correct, -> { where(correct: true) }

  def val_num_of_answers
    errors.add(:question, 'Количество ответов должно быть не больше 4-х') if question.answers.count >= 4
  end
end
