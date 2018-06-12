class Cohort < ApplicationRecord
  has_many :cohorts_students
  has_many :cohorts_instructors
  has_many :students, through: :cohorts_students
  has_many :instructors, through: :cohorts_instructors
  belongs_to :course
end
