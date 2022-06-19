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
    encodig = conn.body_params["encoding"]
    response = SHAService.sha224(conn.body_params["string"], encodig)
    send_resp(conn, 200, response)
  end

  post "/sha256" do
    encoding = conn.body_params["encoding"]
    response = SHAService.sha256(conn.body_params["string"], encoding)
    send_resp(conn, 200, response)
  end

  post "/sha384" do
    encoding = conn.body_params["encoding"]
    response = SHAService.sha384(conn.body_params["string"], encoding)
    send_resp(conn, 200, response)
  end

  post "/sha512" do
    encoding = conn.body_params["encoding"]
    response = SHAService.sha512(conn.body_params["string"], encoding)
    send_resp(conn, 200, response)
  end

end
