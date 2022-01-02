# Ecto pt_BR Localization

**Instructions**

Run the command to publish the `errors.po` in the `/priv/gettext/pt_BR/LC_MESSAGES/` directory

```elixir
mix ecto.localization.pt_br
```

If you're using phoenix, after running the command above you can add the following command in your `config/config.ex` file

```elixir
config :gettext, :default_locale, "pt_BR"
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `ecto_ptbr_localization` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:ecto_ptbr_localization, "~> 0.1.1"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/ecto_ptbr_localization>.
