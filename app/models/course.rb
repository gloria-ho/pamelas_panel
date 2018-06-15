class Course < ApplicationRecord
  validates :name, :hours, presence: true
  has_many :cohorts, dependent: :destroy
end
