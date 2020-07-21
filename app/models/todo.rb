class Todo < ApplicationRecord
  validates :title,:notes, presence: true
end
