defmodule HelloExvcr.ExvcrUtils do
  use ExVCR.Mock, adapter: ExVCR.Adapter.Finch

  def use_cassette_with_context(context, test_content_fn) do
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
