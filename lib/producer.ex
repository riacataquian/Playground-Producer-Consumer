defmodule Producer do
  use GenServer

  def start_link do
    GenServer.start_link(__MODULE__, [], name: :producer)
  end

  def init(_) do
    GenServer.cast(:broker, {:job_available, self})
    {:ok, nil}
  end

  #def handle_cast({:consumer, _consumer}, []), do: {:noreply, []}
  def handle_cast({:consumer, consumer}, _state) do
    :timer.sleep 500

    GenServer.cast(consumer, {:job, :rand.uniform(5)})
    # ...

    :timer.sleep 500
    GenServer.cast(:broker, {:job_available, self})

    {:noreply, consumer}
  end
end
