defmodule SHAService do
    def sha224(string, encoding) do
        cond do
            encoding == "base16" ->
                response = Base.encode16(:crypto.hash(:sha224, string))
                response
            encoding == "base32" ->
                response = Base.encode32(:crypto.hash(:sha224, string))
                response
            encoding == "base64" ->
                response = Base.encode64(:crypto.hash(:sha224, string))
                response
            encoding != "base16" || encoding != "base32" || encoding != "base64" ->
                response = "Please specify an correct encoding"
                response
        end
    end

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

    def sha384(string, encoding) do
        cond do
            encoding == "base16" ->
                response = Base.encode16(:crypto.hash(:sha384, string))
                response
            encoding == "base32" ->
                response = Base.encode32(:crypto.hash(:sha384, string))
                response
            encoding == "base64" ->
                response = Base.encode64(:crypto.hash(:sha384, string))
                response
            encoding != "base16" || encoding != "base32" || encoding != "base64" ->
                response = "Please specify an correct encoding"
                response
        end
    end

    def sha512(string, encodig) do
        cond do
            encodig == "base16" ->
                response = Base.encode16(:crypto.hash(:sha512, string))
                response
            encodig == "base32" ->
                response = Base.encode32(:crypto.hash(:sha512, string))
                response
            encodig == "base64" ->
                response = Base.encode64(:crypto.hash(:sha512, string))
                response
            encodig != "base16" || encodig != "base32" || encodig != "base64" ->
                response = "Please specify an correct encoding"
                response
        end
    end
end