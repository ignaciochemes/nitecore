defmodule Sha256Service do
    def sha256(string, encoding) do
        cond do
            encoding == "base16" ->
                response = Base.encode16(:crypto.hash(:sha256, string))
                response
            encoding == "base32" ->
                response = Base.encode32(:crypto.hash(:sha256, string))
                response
            encoding == "base64" ->
                response = Base.encode64(:crypto.hash(:sha256, string))
                response
            encoding != "base16" || encoding != "base32" || encoding != "base64" ->
                response = "Please specify an correct encoding"
                response
        end
    end
end