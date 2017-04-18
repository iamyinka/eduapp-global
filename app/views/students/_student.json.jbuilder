json.extract! student, :id, :fname, :lname, :level_id, :course_id, :nationality, :email, :phone, :countryloc, :created_at, :updated_at
json.url student_url(student, format: :json)