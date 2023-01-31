json.extract! picture_shot, :id, :title, :description, :user_references, :user_pictureshot, :created_at, :updated_at
json.url picture_shot_url(picture_shot, format: :json)
json.description picture_shot.description.to_s
