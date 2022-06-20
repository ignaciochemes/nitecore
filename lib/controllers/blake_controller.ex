defmodule BlakeController do
    use Plug.Router
    use Plug.ErrorHandler
  
    plug(Plug.Parsers,
      parsers: [:json, :urlencoded],
      pass: ["application/json"],
      json_decoder: Jason
    )
  
    plug(:match)
    plug(:dispatch)
  
    post "/blake2b" do
      response = BlakeService.blake2b(conn.body_params["string"], conn.body_params["encoding"])
      conn = put_resp_content_type(conn, "application/json")
      send_resp(conn, :ok, ResponseFormater.create(response))
    end

    post "/blake2s" do
        response = BlakeService.blake2s(conn.body_params["string"], conn.body_params["encoding"])
        conn = put_resp_content_type(conn, "application/json")
        send_resp(conn, :ok, ResponseFormater.create(response))
      end
  
    @impl Plug.ErrorHandler
    def handle_errors(conn, %{kind: kind, reason: reason, stack: stack}) do
        IO.inspect(kind, label: :kind)
        IO.inspect(reason, label: :reason)
        IO.inspect(stack, label: :stack)
        send_resp(conn, conn.status, "Algo salio mal")
    end
end