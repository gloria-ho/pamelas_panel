class Cohort < ApplicationRecord
  validates :name, :start_date, :end_date, presence: true
  has_many :cohorts_students, dependent: :destroy
  has_many :cohorts_instructors, dependent: :destroy
  has_many :students, through: :cohorts_students, dependent: :destroy
  has_many :instructors, through: :cohorts_instructors, dependent: :destroy
  belongs_to :course
end
