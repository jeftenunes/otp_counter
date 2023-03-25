defmodule Counter do
  alias Counter.Boundary.Server, as: Server

  def start(initial_count),
    do: Server.start_link(initial_count)

  def inc(pid),
    do: GenServer.cast(pid, {:inc})

  def state(pid),
    do: GenServer.call(pid, :state)
end
