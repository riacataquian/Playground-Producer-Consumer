# JenStage

Start you application by running:
```sh
iex -S mix
```

This will automatically since it is declared in our mix.exs.

See (Application)[http://elixir-lang.org/docs/stable/elixir/Application.html]
for more details.

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

