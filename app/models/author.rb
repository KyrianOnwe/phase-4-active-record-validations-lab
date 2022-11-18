class Author < ApplicationRecord
    validates :name, presence: true
    validates :name, length: { minimum: 1, too_short: "%{count} characters is the minimum for name" }
    validates :name, uniqueness: { case_sensitivity: true}
    validates :phone_number, length: {is: 10}
end
