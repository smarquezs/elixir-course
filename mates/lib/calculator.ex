defmodule Mates do
  def add(x, y) do
    perform({:add, x, y})
  end

  def subtract(x, y) do
    perform({:subtract, x, y})
  end

  def multiply(x, y) do
    perform({:multiply, x, y})
  end

  def divide(x, y) when x > 0 and x > 0 do
    perform({:divide, x, y})
  end

  defp perform({:add, x, y}), do: x + y
  defp perform({:subtract, x, y}), do: x - y
  defp perform({:multiply, x, y}), do: x * y
  defp perform({:divide, x, y}), do: div(x, y)
end
