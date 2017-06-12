class Author < ApplicationRecord
  has_and_belongs_to_many :cases
  has_and_belongs_to_many :subjects
end
