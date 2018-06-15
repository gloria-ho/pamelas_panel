class CohortsInstructor < ApplicationRecord
  belongs_to :cohort
  belongs_to :instructor
end
