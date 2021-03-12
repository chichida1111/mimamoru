class Message < ApplicationRecord
  belongs_to :parent_user
  belongs_to :teacher_user
  belongs_to :contact
  has_one_attached :image

  with_options presence: true do
    validates :image
    validates :attendance_id
    validates :body_temperature_id
    validates :pick_up_time_id
    validates :pick_up_person_id
    validates :physical_condition_id
    validates :school_lunch_id
    validates :defecation_id
  end

end
