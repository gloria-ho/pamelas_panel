class Student < ApplicationRecord
  has_many :cohorts_students
  has_many :cohorts, through: :cohorts_students
end
