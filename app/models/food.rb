class Food < ApplicationRecord
  belongs_to :user

  validates :user, presence: true
  validates :brand, :name, :calories, presence: true
  validates :calories, numericality: true

  acts_as_votable
end
