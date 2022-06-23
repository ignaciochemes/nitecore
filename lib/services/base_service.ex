defmodule BaseService do
    def base32(string) do
        Base.encode32(string)
    end

    def base64(string) do
        Base.encode64(string)
    end
end