class User < ActiveRecord::Base
  validates :name, presence: true
  validates :title, length: {minimum: 3}
  validates :email, presence: true,length: {minimum: 5}
  validates :password, presence: true
  validates :password, length: {minimum: 5}
  validates :email_conf, presence: true
  validates :email_conf, length: {minimum: 5}
end
