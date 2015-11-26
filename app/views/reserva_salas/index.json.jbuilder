json.array!(@reserva_salas) do |reserva_sala|
  json.extract! reserva_sala, :id, :reserva_id, :sala_id
  json.url reserva_sala_url(reserva_sala, format: :json)
end
