class User < ActiveRecord::Base
  validates :username, presence: true
  validates :email, presence: true
  validates :admin, presence: true
  has_secure_password
end
