class AddSalaryFieldToInstructor < ActiveRecord::Migration[5.2]
  def change
    add_column :instructors, :salary, :integer
  end
end
