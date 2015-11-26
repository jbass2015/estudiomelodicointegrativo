json.array!(@reservas) do |reserva|
  json.extract! reserva, :id, :dia, :hora
  json.url reserva_url(reserva, format: :json)
end
