defmodule ElixirstutsTest do
  use ExUnit.Case
  doctest Elixirstuts

  test "greets the world" do
    assert Elixirstuts.hello() == :world
  end
end
