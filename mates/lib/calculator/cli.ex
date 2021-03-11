defmodule Mates.CLI do
  def start() do
    [n1, n2] = IO.gets("Ingrese dos numeros") |> parse_number_input()
    action = IO.gets("Ingresa la operación (+ - * /)") |> parse_action()
    result = perform_action(action, {n1, n2})
    str_action = Atom.to_string(action)

    IO.puts("El resultado de #{n1} #{str_action} #{n2} es igual a #{result}")
  end

  defp perform_action(action, {n1, n2}) do
    case action do
      :+ -> Mates.add(n1, n2)
      :- -> Mates.subtract(n1, n2)
      :* -> Mates.multiply(n1, n2)
      :/ -> Mates.divide(n1, n2)
    end
  end

  defp parse_action(str) do
    str
    |> String.trim()
    |> String.to_atom
  end

  defp parse_number_input(str) do
    str
    |> String.split(" ")
    |> Enum.map(&String.trim/1)
    |> Enum.map(&String.to_integer/1)
  end
end