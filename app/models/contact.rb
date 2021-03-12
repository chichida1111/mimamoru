class Contact < ApplicationRecord
  belongs_to :parent_user
  has_one_attached :image
  has_many :messages

  with_options presence: true do
    validates :image
    validates :class_id
    validates :last_name_c_j
    validates :first_name_c_j
    validates :last_name_c_k
    validates :first_name_c_k
  end

end
