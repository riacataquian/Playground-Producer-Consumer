defmodule Consumer do
  use GenServer

  def start_link do
    GenServer.start_link(__MODULE__, [])
  end

  def handle_cast({:job, job}, _state) do
    #Process.sleep 500 dafuq
    :timer.sleep(500 * job)
    GenServer.cast(:broker, {:done, self})
    IO.puts "done"
    {:noreply, job}
  end
end
