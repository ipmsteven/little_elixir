defmodule Ping do
  def act do
    receive do
      {pong_pid} ->
        IO.puts "Start! Ping!"
        send(pong_pid, {self})
      {pong_pid, :pong} ->
        IO.puts "Got Pong, Ping! it back!"
        send(pong_pid, {self, :ping})
      _ ->
        IO.puts "unknown msg"
    end
    act
  end
end

defmodule Pong do
  def act do
    receive do
      {ping_pid} ->
        IO.puts "Start! Pong!"
        send(ping_pid, {self})
      {ping_pid, :ping} ->
        IO.puts "Got Ping, Pong it back!"
        send(ping_pid, {self, :pong})
      _ ->
        IO.puts "unknown msg"
    end
    act
  end
end
