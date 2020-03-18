class Movie < ApplicationRecord
  validates :title, presence: true
  validates :year, numericality: true
  validates :plot, presence: true, length: { minimum: 10 }
  validates :director, presence: true, length: { minimum: 2 }

  has_many :actors
end
