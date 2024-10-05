defmodule HelloExvcrTest do
  use ExUnit.Case
  doctest HelloExvcr

  test "greets the world" do
    assert HelloExvcr.hello() == :world
  end
end
