class Review < ApplicationRecord
  belongs_to :book
  validates :body, presence: true, uniqueness: true
end
