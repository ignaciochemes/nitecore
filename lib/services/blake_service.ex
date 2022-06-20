defmodule BlakeService do
    def blake2b(string, encoding) do
        cond do
            encoding == "base16" -> Base.encode16(:crypto.hash(:blake2b, string))
            encoding == "base32" -> Base.encode32(:crypto.hash(:blake2b, string))
            encoding == "base64" -> Base.encode64(:crypto.hash(:blake2b, string))
            encoding != "base16" || encoding != "base32" || encoding != "base64" ->
                "Please specify an correct encoding. You choose #{encoding}"
        end
    end

    def blake2s(string, encoding) do
        cond do
            encoding == "base16" -> Base.encode16(:crypto.hash(:blake2s, string))
            encoding == "base32" -> Base.encode32(:crypto.hash(:blake2s, string))
            encoding == "base64" -> Base.encode64(:crypto.hash(:blake2s, string))
            encoding != "base16" || encoding != "base32" || encoding != "base64" ->
                "Please specify an correct encoding. You choose #{encoding}"
        end
    end
end