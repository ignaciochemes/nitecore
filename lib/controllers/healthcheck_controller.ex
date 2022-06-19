defmodule HealthCheckController do
  use Plug.Router
  use Plug.ErrorHandler

  plug(Plug.Parsers,
    parsers: [:json, :urlencoded],
    pass: ["application/json"],
    json_decoder: Jason
  )

  plug(:match)
  plug(:dispatch)

  get "/" do
    response = "Api works fine"
    conn = put_resp_content_type(conn, "application/json")
    send_resp(conn, :ok, ResponseFormater.create(response))
  end
end