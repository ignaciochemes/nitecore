defmodule SHA3Service do
    def sha224(string, encoding) do
        cond do
            encoding == "base16" -> Base.encode16(:crypto.hash(:sha3_224, string))
            encoding == "base32" -> Base.encode32(:crypto.hash(:sha3_224, string))
            encoding == "base64" -> Base.encode64(:crypto.hash(:sha3_224, string))
            encoding != "base16" || encoding != "base32" || encoding != "base64" ->
                "Please specify an correct encoding. You choose #{encoding}"
        end
    end

    def sha256(string, encoding) do
        cond do
            encoding == "base16" -> Base.encode16(:crypto.hash(:sha3_256, string))
            encoding == "base32" -> Base.encode32(:crypto.hash(:sha3_256, string))
            encoding == "base64" -> Base.encode64(:crypto.hash(:sha3_256, string))
            encoding != "base16" || encoding != "base32" || encoding != "base64" ->
                "Please specify an correct encoding. You choose #{encoding}"
        end
    end

    def sha384(string, encoding) do
        cond do
            encoding == "base16" -> Base.encode16(:crypto.hash(:sha3_384, string))
            encoding == "base32" -> Base.encode32(:crypto.hash(:sha3_384, string))
            encoding == "base64" -> Base.encode64(:crypto.hash(:sha3_384, string))
            encoding != "base16" || encoding != "base32" || encoding != "base64" ->
                "Please specify an correct encoding. You choose #{encoding}"
        end
    end

    def sha512(string, encoding) do
        cond do
            encoding == "base16" -> Base.encode16(:crypto.hash(:sha3_512, string))
            encoding == "base32" -> Base.encode32(:crypto.hash(:sha3_512, string))
            encoding == "base64" -> Base.encode64(:crypto.hash(:sha3_512, string))
            encoding != "base16" || encoding != "base32" || encoding != "base64" ->
                "Please specify an correct encoding. You choose #{encoding}"
        end
    end
end