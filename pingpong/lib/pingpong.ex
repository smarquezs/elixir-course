defmodule Pingpong do
  def start() do
    ping = spawn(Ping, :ping, [])
    pong = spawn(Pong, :pong, [])

    send(ping, {:ping, pong})
  end
end
