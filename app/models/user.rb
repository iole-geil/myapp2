class User < ApplicationRecord
  has_many :comments

  validates :name, presence: true
  validates :age, presence: true
end
