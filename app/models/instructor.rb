class Instructor < ApplicationRecord
  has_many :cohorts_instructors
  has_many :cohorts, through: :cohorts_instructors
end
