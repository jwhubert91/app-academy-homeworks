# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
    attr_reader: :password

    validates :username, :session_token, presence: true
    validates :password_digest, presence: { "Password can't be blank" }
    validates :password, length: { minimum: 5, allow_nil: true }

    before_validation :ensure_session_token

    #  ::find_by_credentials
    def self.find_by_credentials(username,password)
        user = User.find_by(username: username)
        return nil if user.nil?
        user.is_password?(password) ? user : nil 
    end

    def self.generate_session_token
        SecureRandom::urlsafe_base64(16)
    end

    def reset_session_token!
        self.session_token = self.class.generate_session_token
        self.save!
        self.session_token
    end

    def password=(password)
        self.password_digest = BCrypt::Password.create(password)
    end

    private

    def ensure_session_token
        self.session_token ||= self.class.generate_session_token
    end
end
