class CreateSchool < ActiveRecord::Migration[6.0]
  def change
    create_table :schools do |t|
      t.string :name 
      t.string :location
      t.integer :student_id
      t.integer :course_id
    end
  end
end
