json.array!(@babies) do |baby|
  json.extract! baby, :id, :name, :birthday, :length, :weight, :gender, :avatar, :string
  json.url baby_url(baby, format: :json)
end
