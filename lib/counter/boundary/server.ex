defmodule Counter.Boundary.Server do
  use GenServer
  alias Counter.Core.CounterCore, as: Core

  def init(initial_state),
    do: {:ok, initial_state}

  def start_link(initial_state),
    do: GenServer.start_link(__MODULE__, initial_state)

  def handle_cast({:inc}, state),
    do: {:noreply, Core.inc(state)}

  def handle_call(:state, _from, state),
    do: {:reply, state, state}
end
