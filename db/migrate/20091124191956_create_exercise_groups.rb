class CreateExerciseGroups < ActiveRecord::Migration
  def self.up
    create_table :exercise_groups do |t|
      t.string :name
      t.integer :course_instance_id
      t.timestamps
    end
  end

  def self.down
    drop_table :exercise_groups
  end
end
