class User < ApplicationRecord
    has_secure_password
    validates :name, {presence: true, uniqueness: true}
    validates :part, {presence: true}
    validates :generation, {presence: true}
end
