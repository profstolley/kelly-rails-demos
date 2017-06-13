class Case < ApplicationRecord
  has_and_belongs_to_many :authors
  has_and_belongs_to_many :subjects
  validates :title, :year, :author, :abstract, :subject, presence: true
  validates :title, uniqueness: true
  validates :year, length: { is: 4 }
  validates :year, format: {
    with: /\d{4}\z/,
    message: "subject must be xxxx"
  }
end
