defmodule JenStage do
  use Application

  def start(_type, _args) do
    Broker.start_link
    Producer.start_link
  end

  #TODO: Loop me!
  def run do
    GenServer.cast(:broker, {:job_available, 5})
  end
end
