defmodule ListFilter do
  def call([]), do: 0

  def call([_head | _tail] = list) do
    new_list =
      Enum.map(list, fn string ->
        case Integer.parse(string) do
          # transform to integer
          {int, _rest} -> int
          :error -> 0
        end
      end)
     length(Enum.filter(new_list, fn x -> rem(x, 2) != 0 end))
  end
end
