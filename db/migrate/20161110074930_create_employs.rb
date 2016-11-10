class CreateEmploys < ActiveRecord::Migration
  def change
    create_table :employs do |t|
      t.string    :organization
      t.string    :position
      t.text      :responsibility
      t.date      :date_start
      t.date      :date_finish
      t.integer   :user_id

      t.timestamps null: false
    end
  end
end
