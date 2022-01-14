json.extract! student_profile, :id, :email, :address, :age, :mobile, :image, :student_id, :created_at, :updated_at
json.url student_profile_url(student_profile, format: :json)
