defmodule HelloExvcr.ApiClient do
  @api_base_url URI.parse("https://jsonplaceholder.typicode.com")

  def get_todo(id) do
    @api_base_url |> URI.append_path("/todos/#{id}") |> Req.get()
  end
end
