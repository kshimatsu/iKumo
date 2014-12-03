json.array!(@babies) do |baby|
  json.extract! baby, :id, :name, :birthday, :length, :weight, :gender, :profile_pic, :string
  json.url baby_url(baby, format: :json)
end
