class User < ActiveRecord::Base
  has_secure_password

  has_many :moods, dependent: :destroy

  # before_save {self.username = username.downcase}
  # validates :username, presence: true, length: {maximum: 50}, uniqueness: {case_sensitive: false}
  # validates :password, presence: true

end
