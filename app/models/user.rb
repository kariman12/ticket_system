class User < ApplicationRecord
    validates :name, {presence: true, uniqueness: true}
    validates :part, {presence: true}
    validates :generation, {presence: true}
    validates :password, {presence: true}
end
