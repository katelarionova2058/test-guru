class Test < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  belongs_to :category

  has_many :users, through: :test_users
  has_many :questions, dependent: :destroy
  has_many :test_users, dependent: :destroy

  scope :easy, -> { where(level: 0..1) }
  scope :middle, -> { where(level: 2..4) }
  scope :hard, -> { where(level: 5..Float::INFINITY) }

  validates :title, presence: true,
                    uniqueness: { scope: :level }
  validates :level, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def self.find_by_category(title)
  joins(:category)
  .where(categories: { title: title })
  .order(title: :desc)
  .pluck(:title)
end

  scope :by_category_title, -> (title) {  joins(:category).where(categories: { title: title }) }
end
