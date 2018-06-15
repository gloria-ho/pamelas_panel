class Instructor < ApplicationRecord
  validates :f_name, :l_name, :birthday, :education, presence: true
  has_many :cohorts_instructors, dependent: :destroy
  has_many :cohorts, through: :cohorts_instructors, dependent: :destroy
end
