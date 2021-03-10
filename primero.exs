defmodule Mates do
  def add(x, y) do
    perform({:add, x, y})
  end

  def subtract(x, y) do
    perform({:subtract, x, y})
  end

  defp perform(parameters) do
    {action, x, y} = parameters

    if action == :add do
      x + y
    else
      x - y
    end
  end
end

resultado = Mates.add(12, 23)
IO.puts("El resultado es #{resultado}")

resultado = Mates.subtract(100, 23)
IO.puts("El resultado es #{resultado}")