class Gender < ApplicationRecord

	has_one_attached :gender_image

	has_many :clothes
end
