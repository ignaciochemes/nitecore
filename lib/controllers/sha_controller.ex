defmodule ShaController do
  use Plug.Router
  use Plug.ErrorHandler

  plug(Plug.Logger)

  plug(Plug.Parsers,
    parsers: [:json, :urlencoded],
    pass: ["application/json"],
    json_decoder: Jason
  )

  plug(:match)
  plug(:dispatch)

  post "/sha224" do
    response = SHAService.sha224(conn.body_params["string"], conn.body_params["encoding"])
    send_resp(conn, 200, ResponseFormater.create(response))
  end

  post "/sha256" do
    response = SHAService.sha256(conn.body_params["string"], conn.body_params["encoding"])
    send_resp(conn, 200, ResponseFormater.create(response))
  end

  post "/sha384" do
    response = SHAService.sha384(conn.body_params["string"], conn.body_params["encoding"])
    send_resp(conn, 200, ResponseFormater.create(response))
  end

  post "/sha512" do
    response = SHAService.sha512(conn.body_params["string"], conn.body_params["encoding"])
    send_resp(conn, 200, ResponseFormater.create(response))
  end

end
