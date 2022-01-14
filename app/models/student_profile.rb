class StudentProfile < ApplicationRecord
  mount_uploader :image, AvatarUploader
  belongs_to :student
end
