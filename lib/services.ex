defmodule RestApi.Services do
  
    def generateRandomNumber do
        Enum.random(100000..999_999)
    end

end