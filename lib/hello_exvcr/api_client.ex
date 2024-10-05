defmodule HelloExvcr.ApiClient do
  @api_base_url URI.parse("https://jsonplaceholder.typicode.com")

  def get_todo(id) do
    endpoint = URI.append_path(@api_base_url, "/todos/#{id}")
    Req.new(url: endpoint, headers: headers()) |> Req.get()
  end

  def headers do
    [authorization: "Bearer #{api_token()}"]
  end

  def api_token do
    Application.fetch_env!(:hello_exvcr, :api_token)
  end
end
