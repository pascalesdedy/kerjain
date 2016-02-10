json.array!(@daftar_kerjaans) do |daftar_kerjaan|
  json.extract! daftar_kerjaan, :id, :title, :description
  json.url daftar_kerjaan_url(daftar_kerjaan, format: :json)
end
