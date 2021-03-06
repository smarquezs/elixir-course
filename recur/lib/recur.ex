defmodule Recur do
  def greater(name, count \\ 1) do
    each(fn -> IO.puts("Hola #{name}") end, count)
  end

  def each(func, count \\ 1) do
    if count >= 1 do
      func.()
      each(func, count - 1)
    end
  end

  def len([]), do: 0
  def len([_head | tail]), do: 1 + len(tail)

  def map([], _func), do: []
  def map([head | tail], func) do
    [func.(head) | map(tail, func)]
  end

  def filter([], _func), do: []
  def filter([head | tail], func) do
    func.(head) && [head | filter(tail, func)] || filter(tail, func)
  end

  def reduce([], acc, _func), do: acc
  def reduce([head | tail], acc, func) do
    new_acc = func.(head, acc)
    reduce(tail, new_acc, func)
  end
end
