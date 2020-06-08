class Todo < ApplicationRecord
  belongs_to :user
  belongs_to :list

  validates :user_id, presence: true
  validates :name, presence: true

  default_scope { order('created_at DESC') }

end
