# Process 1 will send a ping message to process 2
# process 2 will respond with a pong message to process 1
# do this 11 times

# 1. Player_1 --PING-->  Player_2
# 2. Player_1 <--PONG-- Player_2
# 3. Player_1 --PING--> Player_2
#  ...
#  ...
# 10. Player_1 <--PONG-- Player_2
# 11. Player_1 --PING--> Player_2

# Create Ping pong module
defmodule PingPong do
  @game_finish 11
  def ready do
    receive do
      {_sender, _action, @game_finish} ->
        IO.puts "Game over man!"
        ready()
      {sender, action, turn} ->
        hit_to(sender, switch(action), turn + 1)
        ready()
      after
        1_000 -> IO.puts "timing out player #{inspect player_pid()}"
    end
  end

  def hit_to(opponent_id, action, turn) do
    IO.puts "#{turn}. hit_to #{inspect opponent_id} #{inspect action}"
    send(opponent_id, {player_pid(), action, turn})
  end

  defp switch(action) do
    case action do
      :ping -> :pong
      _ -> :ping
    end
  end

  defp player_pid, do: self()
end
# Ready function to receive messages from other process
# Handle each message
# Send messages to process
# Switch between ping/pong

# 1. get Main Process
player_1 = self()
# 2. get spawned PID values
# player_2 = spawn(PingPong, :ready, [])
# player_2 = elem(Task.start(PingPong, :ready, []), 1)
player_2 = PingPong |> Task.start(:ready, []) |> elem(1)
# 3. inspect PID values
IO.puts "player_1: #{inspect player_1}"
IO.puts "player_2: #{inspect player_2}"
# 4. send message from main process to spawned process
PingPong.hit_to(player_2, :ping, 1)
# 5. start message receiver on main process
PingPong.ready()
