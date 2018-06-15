class CreateCohortsInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts_instructors do |t|
      t.integer :instructor_id
      t.integer :cohort_id

      t.timestamps
    end
  end
end
