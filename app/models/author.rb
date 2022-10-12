class Author < ApplicationRecord
  validates :name, presence: true, length: { minimum: 1 }
  validates :email, presence: true, uniqueness: { case_sensitive: true }
end