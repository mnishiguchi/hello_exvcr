defmodule HelloExvcr.ApiClientTest do
  use ExUnit.Case
  import HelloExvcr.ExvcrUtils

  doctest HelloExvcr.ApiClient

  test "get_todo", context do
    use_cassette_with_context(context, fn _context ->
      {:ok, response} = HelloExvcr.ApiClient.get_todo(123)

      assert %{"title" => "esse et quis iste est earum aut impedit"} = response.body
    end)
  end
end
