class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: {case_Sensitive: false}
    has_many :blogs, dependent: :destroy
    has_many :categories, through: :blogs
end
