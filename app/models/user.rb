class User < ApplicationRecord

    has_many :house

    validates :email, presence: true, uniqueness: true
end
