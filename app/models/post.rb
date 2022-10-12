class Post < ApplicationRecord
  validates :title, presence: true, length: {minimum: 1}
  validates_inclusion_of :category, in: %w[Fiction Non-Fiction], on: :create
  validates :content, presence: true, length: {minimum: 100}
end
