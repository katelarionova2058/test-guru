class User < ApplicationRecord
  def find_user_tests_by_level(level)
    Test.where(level: level)
        .joins('JOIN tests ON tests.test_id = tests.id')
        .where(tests: { user_id: id })
  end
end
