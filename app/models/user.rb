class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true

  has_many :lists
  has_many :todos

  after_create :setup
  before_save { self.role ||= :user }

  enum role: [:user, :admin]

  private
  def setup
    self.lists.create!(name: "My First List")
    self.lists.first.todos.create!(user: self, name: "Create a new list")
    self.lists.first.todos.create!(user: self, name: "Do them")
    self.lists.first.todos.create!(user: self, name: "Create more to-dos")
  end

end
