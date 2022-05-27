class Library < ApplicationRecord
    has_and_belongs_to_many :books
    validates :name, presence: true
    validates :address, presence: true
    validates :number, presence: true
end
