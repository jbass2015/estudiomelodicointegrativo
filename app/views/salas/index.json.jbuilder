json.array!(@salas) do |sala|
  json.extract! sala, :id, :salaFull, :salaMedia, :salaBasica
  json.url sala_url(sala, format: :json)
end
