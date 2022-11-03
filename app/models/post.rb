class Post < ApplicationRecord
  belongs_to :admin
  belongs_to :language

  has_many :comments
  has_many :posts_technologies
  has_many :technologies, through: :posts_technologies

  enum dificulty: { junior: 0, pleno: 1, senior: 2 }
end
