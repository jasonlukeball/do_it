class List < ApplicationRecord

  belongs_to :user
  has_many :todos, dependent: :destroy

  validates :name, presence: true

  default_scope { order('created_at DESC') }

end
