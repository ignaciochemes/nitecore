defmodule ResponseFormater do
    def create(data) do
        Jason.encode!(%{"result" => %{data: data}})
    end
end