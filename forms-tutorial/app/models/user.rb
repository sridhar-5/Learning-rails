class User < ApplicationRecord
  # adding the validation for user model here
  validates :username, presence: true
  validates :password, presence: true, length: {minimum: 10}
end
