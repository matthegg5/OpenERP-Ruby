class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  # Validate uniqueness of the username
  validates :username, presence: true, uniqueness: true

  # Allow Devise to authenticate via username instead of email
  def self.find_for_database_authentication(conditions)
    conditions = conditions.dup
    if login = conditions.delete(:username)
      where(conditions).where("lower(username) = ?", login.downcase).first
    else
      where(conditions).first
    end
  end
end
