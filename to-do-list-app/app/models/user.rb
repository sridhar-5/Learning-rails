class User < ApplicationRecord
  has_many :tasks ,foreign_key: 'user_id'

  validates :username, presence: true
  validates :password, presence: true, length: {minimum: 8}
end
