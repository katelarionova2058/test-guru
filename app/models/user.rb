class User < ApplicationRecord
  has_many :tests, through: :test_users
  has_many :test_users, dependent: :destroy

  def find_user_tests_by_level(level)
    tests.where(level: level)
  end

  validates :email, presence: true
  validates :name, presence: true
end
