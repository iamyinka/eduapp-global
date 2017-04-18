json.extract! course, :id, :coursename, :created_at, :updated_at
json.url course_url(course, format: :json)