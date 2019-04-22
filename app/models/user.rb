class User < ActiveRecord::Base
	has_secure_password

    validates :email, :uniqueness => { :case_sensitive => false }
    validates :password, presence: true, :length => {:within => 6..40}
    validates :password_confirmation, presence: true

    def self.authenticate_with_credentials email, password
        lowerCaseEmail = email.downcase.strip
        if User.find_by(email: lowerCaseEmail).try(:authenticate, password)
            User.find_by(email: lowerCaseEmail)
        else
            nil
        end
    end
end