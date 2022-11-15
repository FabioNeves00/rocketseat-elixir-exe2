defmodule ListFilterTest do
  use ExUnit.Case
  describe "call/1" do
    test "returns number of odds in a list" do
      assert ListFilter.call(["1", "3", "6", "43", "banana", "6", "abc"]) == 3
    end
  end
end
