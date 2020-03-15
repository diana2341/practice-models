class CreateCourse < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :subject
      t.boolean :pass
      t.integer :schedule
      t.integer :num_of_students
    end
  end
end
