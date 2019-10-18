class House < ApplicationRecord
    validates :price, presence: true
end
