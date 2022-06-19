defmodule RestApi.Router do
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

    get "/randomNumber" do
        response = RestApi.Services.generateRandomNumber()
        map = Jason.encode!(%{result: %{number: response}})
        send_resp(conn, 200, "#{map}")
    end
    
    forward "/sha", to: ShaController

    match _ do
        send_resp(conn, 404, "Not Found")
    end

    defp handle_errors(conn, %{kind: kind, reason: reason, stack: stack}) do
        IO.inspect(kind, label: :kind)
        IO.inspect(reason, label: :reason)
        IO.inspect(stack, label: :stack)
        send_resp(conn, conn.status, "Algo salio mal")
    end
end
