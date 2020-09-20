class Ticket < ApplicationRecord
    validates :user_id, {presence: true}
end
