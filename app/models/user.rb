class User < ApplicationRecord
    has_secure_password

    has_many :favorites
    has_many :composers, through: :favorites
end
