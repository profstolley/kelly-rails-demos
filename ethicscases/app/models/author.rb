class Author < ApplicationRecord
  has_and_belongs_to_many :cases
  has_and_belongs_to_many :subjects

  def name
    "#{first_name} #{last_name}"
  end

  def name_from_parts(name)
    name_parts = name.split(" ")
    self.last_name = name_parts.pop
    first_name = name_parts.join(" ")
  end

  validates :first_name, :last_name, presence: true
  validates :first_name, :last_name, length: { minimum: 2 }
  validates :first_name, :last_name, uniqueness: true
end
