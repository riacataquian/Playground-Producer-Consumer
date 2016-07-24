defmodule Broker do
  use GenServer

  def start_link(initial_state \\ 5) do
    state =
      for _ <- 1..initial_state do
        {:ok, pid} = Consumer.start_link
        pid
      end

    GenServer.start_link(__MODULE__, state, name: :broker)
  end

  def handle_cast({:job_available, producer}, [ head |tail ]) do
    GenServer.cast(producer, {:consumer, head})
    {:noreply, tail}
  end

  def handle_cast({:done, consumer}, state) do
    GenServer.cast(:producer, {:consumer, consumer})
    {:noreply, [ consumer | state ]}
  end
end
