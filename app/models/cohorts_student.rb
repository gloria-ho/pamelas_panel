class CohortsStudent < ApplicationRecord
  belongs_to :cohorts
  has_many :students
end
