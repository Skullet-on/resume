class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string  :title
      t.string  :award
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
