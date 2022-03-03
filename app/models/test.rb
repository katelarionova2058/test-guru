class Test < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  belongs_to :category

  has_many :users, through: :test_users
  has_many :questions, dependent: :destroy
  has_many :test_users, dependent: :destroy
  
  def self.find_by_category(title)
    joins(:category)
    .where(categories: { title: title })
    .order(title: :desc)
    .pluck(:title)
  end
end
