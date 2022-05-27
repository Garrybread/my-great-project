class Book < ApplicationRecord
    has_and_belongs_to_many :libraries
    has_many :reviews, dependent: :destroy
    validates :title, presence: true, uniqueness: true
    validates :description, presence: true
    validates :price, presence: true
  end