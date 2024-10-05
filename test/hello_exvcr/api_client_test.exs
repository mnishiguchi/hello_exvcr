defmodule HelloExvcr.ApiClientTest do
  use ExUnit.Case
  doctest HelloExvcr.ApiClient

  test "get_todo" do
    {:ok, response} = HelloExvcr.ApiClient.get_todo(123)

    assert %{"title" => "esse et quis iste est earum aut impedit"} = response.body
  end
end
