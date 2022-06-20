defmodule ResponseFormater do
    def create(data) do
        Jason.encode!(%{"result" => %{data: String.downcase(data)}})
    end
end