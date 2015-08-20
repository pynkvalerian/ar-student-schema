require_relative '../config'

# this is where you should use an ActiveRecord migration to

class TeachersStudents < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table

    create_table :teacher_students do |t|
      t.integer :teacher_id
      t.integer :student_id
    end

    change_table :students do |t|
      t.remove :teacher_id
    end
  end
end