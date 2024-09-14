defmodule MonkeyLanguageTest do
  use ExUnit.Case
  doctest MonkeyLanguage

  test "greets the world" do
    assert MonkeyLanguage.hello() == :world
  end
end
