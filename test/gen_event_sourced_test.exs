defmodule GenEventSourcedTest do
  use ExUnit.Case
  doctest GenEventSourced

  test "greets the world" do
    assert GenEventSourced.hello() == :world
  end
end
