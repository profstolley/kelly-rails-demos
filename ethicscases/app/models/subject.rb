class Subject < ApplicationRecord
  has_and_belongs_to_many :authors
  has_and_belongs_to_many :cases

  validates :subject, presence: true
  validates :subject, length: { minimum: 2 }

end
