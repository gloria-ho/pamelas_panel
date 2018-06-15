class Student < ApplicationRecord
  validates :f_name, :l_name, :birthday, :education, presence: true
  has_many :cohorts_students, dependent: :destroy
  has_many :cohorts, through: :cohorts_students, dependent: :destroy
end
