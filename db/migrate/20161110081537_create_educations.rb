class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string  :organization
      t.string  :qualification
      t.string  :major
      t.text    :other
      t.date    :date_start
      t.date    :date_finish
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
