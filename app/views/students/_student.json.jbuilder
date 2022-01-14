json.extract! student, :id, :firstName, :lastName, :marks1, :marks2, :marks3, :total, :created_at, :updated_at
json.url student_url(student, format: :json)
