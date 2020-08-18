class Tag < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  belongs_to :user
  has_many :todo_tags
  has_many :todos, through: :todo_tags
end
