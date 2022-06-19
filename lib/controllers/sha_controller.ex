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

    post "/sha256" do
        encoding = conn.body_params["encoding"]
        response = Sha256Service.sha256(conn.body_params["string"], encoding)
        send_resp(conn, 200, "#{response}")
    end
end