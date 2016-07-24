# JenStage

Start your application by running:
```sh
iex -S mix
```

GenServer will automatically be started since it is declared in our mix.exs.

See [docs](http://elixir-lang.org/docs/stable/elixir/Application.html) to learn more about Elixir's Application.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add jen_stage to your list of dependencies in `mix.exs`:

        def deps do
          [{:jen_stage, "~> 0.0.1"}]
        end

  2. Ensure jen_stage is started before your application:

        def application do
          [applications: [:jen_stage]]
        end

