defmodule Ping  do
  def ping() do
    receive do
      {:ping, pong_id} ->
        IO.puts("Ping! ---->")
        Process.sleep(500)
        send(pong_id, {:pong, self()})
        ping()
        _ -> ping()
    end
  end
end