class Journal < ApplicationRecord
    validates :title, presence: true, length: {minimum: 4, maximum: 20}
    validates :description, presence: true
end