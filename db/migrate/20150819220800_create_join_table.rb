require_relative '../config'

# this is where you should use an ActiveRecord migration to

class CreateJoinTable < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table

    drop_table :teacher_students

    create_join_table :teachers, :students, table_name: :teacher_students do |t|
      t.index :teacher_id
      t.index :student_id
    end
  end
end