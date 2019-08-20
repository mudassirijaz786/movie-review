json.extract! movie, :id, :title, :director_name, :director_dob, :actor_name, :actor_dob, :genra, :year, :created_at, :updated_at
json.url movie_url(movie, format: :json)
