class Todo < ApplicationRecord
  validates :title, :notes, presence: true
  has_many :todo_tags
  has_many :tags, through: :todo_tags
end
