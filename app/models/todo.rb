class Todo < ApplicationRecord
  validates :title, :notes, presence: true
  belongs_to :user
  has_many :todo_tags
  has_many :tags, through: :todo_tags
  accepts_nested_attributes_for :tags
end
