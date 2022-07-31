class Clothe < ApplicationRecord
  belongs_to :gender
  has_one_attached :gender_image

 validates :name, presence: true
  validates :size, :length => { :maximum => 3 }

end
