class User < ApplicationRecord
    enum role: [:standard, :admin]
    before_save { email.downcase! }
    has_many :projects, dependent: :destroy
    validates :name, presence: true, length: { maximum: 50 }
    validates :password, length: { minimum: 6 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }

    after_initialize do
        if self.new_record?
          self.role ||= :standard
        end
      end
end
