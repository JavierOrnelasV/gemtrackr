class User < ApplicationRecord
  validates :name, presence: :true
  validates :email, presence: :true
  validates :username, presence: :true
  validates :password_confirmation, presence: true

  has_secure_password
end
