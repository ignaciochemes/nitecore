defmodule SHAService do
    def sha1(string, encoding) do
        cond do
            encoding == "base16" -> Base.encode16(:crypto.hash(:sha, string))
            encoding == "base32" -> Base.encode32(:crypto.hash(:sha, string))
            encoding == "base64" -> Base.encode64(:crypto.hash(:sha, string))
            encoding != "base16" || encoding != "base32" || encoding != "base64" ->
                "Please specify an correct encoding. You choose #{encoding}"
        end
    end

    def sha224(string, encoding) do
        cond do
            encoding == "base16" -> Base.encode16(:crypto.hash(:sha224, string))
            encoding == "base32" -> Base.encode32(:crypto.hash(:sha224, string))
            encoding == "base64" -> Base.encode64(:crypto.hash(:sha224, string))
            encoding != "base16" || encoding != "base32" || encoding != "base64" ->
                "Please specify an correct encoding. You choose #{encoding}"
        end
    end

    def sha256(string, encoding) do
        cond do
            encoding == "base16" -> Base.encode16(:crypto.hash(:sha256, string))
            encoding == "base32" -> Base.encode32(:crypto.hash(:sha256, string))
            encoding == "base64" -> Base.encode64(:crypto.hash(:sha256, string))
            encoding != "base16" || encoding != "base32" || encoding != "base64" ->
                "Please specify an correct encoding. You choose #{encoding}"
        end
    end

    def sha384(string, encoding) do
        cond do
            encoding == "base16" -> Base.encode16(:crypto.hash(:sha384, string))
            encoding == "base32" -> Base.encode32(:crypto.hash(:sha384, string))
            encoding == "base64" -> Base.encode64(:crypto.hash(:sha384, string))
            encoding != "base16" || encoding != "base32" || encoding != "base64" ->
                "Please specify an correct encoding. You choose #{encoding}"
        end
    end

    def sha512(string, encoding) do
        cond do
            encoding == "base16" -> Base.encode16(:crypto.hash(:sha512, string))
            encoding == "base32" -> Base.encode32(:crypto.hash(:sha512, string))
            encoding == "base64" -> Base.encode64(:crypto.hash(:sha512, string))
            encoding != "base16" || encoding != "base32" || encoding != "base64" ->
                "Please specify an correct encoding. You choose #{encoding}"
        end
    end
end