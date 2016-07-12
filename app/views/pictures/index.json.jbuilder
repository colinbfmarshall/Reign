json.array!(@pictures) do |picture|
  json.extract! picture, :id, :index, :new, :create, :edit, :update, :show, :destroy
  json.url picture_url(picture, format: :json)
end
