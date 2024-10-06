defmodule HelloExvcr.ApiClientTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Finch

  doctest HelloExvcr.ApiClient

  test "get_todo", context do
    use_cassette_with_context(context, fn _context ->
      {:ok, response} = HelloExvcr.ApiClient.get_todo(123)

      assert %{"title" => "esse et quis iste est earum aut impedit"} = response.body
    end)
  end

  def use_cassette_with_context(context,test_content_fn) do
    # See https://hexdocs.pm/exvcr/ExVCR.Mock.html#use_cassette/2
    use_cassette(cassette_path_from_context(context)) do
      test_content_fn.(context)
    end
  end

  def use_cassette_with_context(context, vcr_options, test_content_fn) do
    # See https://hexdocs.pm/exvcr/ExVCR.Mock.html#use_cassette/3
    use_cassette(cassette_path_from_context(context), vcr_options) do
      test_content_fn.(context)
    end
  end

  def cassette_path_from_context(context) do
    Path.join(Macro.underscore(context.case), to_string(context.test))
  end
end
