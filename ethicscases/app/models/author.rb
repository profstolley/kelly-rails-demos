class Author < ApplicationRecord
  has_and_belongs_to_many :cases
  has_and_belongs_to_many :subjects

  validates :first_name, :last_name, presence: true
  validates :first_name, :last_name, length: { minimum: 2 }
end
