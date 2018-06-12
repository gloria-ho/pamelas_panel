class CohortsInstructor < ApplicationRecord
  belongs_to :cohorts
  has_many :instructors
end
