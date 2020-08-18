class Tag < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: {scope: :user_id}
  
  belongs_to :user
  has_many :todo_tags
  has_many :todos, through: :todo_tags
end
