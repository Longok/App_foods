class User < ApplicationRecord
    before_save { self.email = email.downcase }
    has_secure_password
    has_many :checkouts

    validates :name, presence: true, length: {minimum: 4}
    validates :password, presence: true, length: { minimum: 6}

    EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, uniqueness: true, length: {minimum: 4}, format: {with: EMAIL_REGEX}


    def admin
        self.email == "admin@gmail.com"
    end
end
