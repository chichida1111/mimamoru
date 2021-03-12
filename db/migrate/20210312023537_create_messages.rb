class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.integer    :attendance_id,         null: false
      t.integer    :body_temperature_id,   null: false
      t.integer    :pick_up_time_id,       null: false  
      t.integer    :pick_up_person_id,     null: false
      t.text       :parent_comment,        null: false
      t.references :parent_user,           null: false, foreign_key: true, type: :bigint
      t.integer    :physical_condition_id, null: false
      t.integer    :school_lunch_id,       null: false
      t.integer    :defecation_id,         null: false
      t.text       :teacher_comment,       null: false
      t.references :teacher_user,          null: false, foreign_key: true, type: :bigint
      t.timestamps
    end
  end
end
