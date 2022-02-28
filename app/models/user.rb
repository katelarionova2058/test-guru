class User < ApplicationRecord
  def find_user_tests_by_level(level)
    Test.where(level: level)
        .joins('JOIN tests ON tests_users.test_id = tests.id')
        .where(tests_users:{ user_id: id })
  end
end
