class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :f_name
      t.string :l_name
      t.date :birthday
      t.string :education

      t.timestamps
    end
  end
end
