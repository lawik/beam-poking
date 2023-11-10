defmodule Example do
  def run do
    [1,2,3]
    |> Enum.map(&print/1)
  end

  defp print(thing) do
    IO.puts(thing)
  end
end
