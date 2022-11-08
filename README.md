# kemal-kilt

[![Crystal CI](https://github.com/crystal-garage/kemal-kilt/actions/workflows/crystal.yml/badge.svg)](https://github.com/crystal-garage/kemal-kilt/actions/workflows/crystal.yml)
[![GitHub release](https://img.shields.io/github/release/crystal-garage/kemal-kilt.svg)](https://github.com/crystal-garage/kemal-kilt/releases)

Kilt templating interface helpers for Kemal

> Since Kemal 1.2 Kilt removed as dependency <https://github.com/kemalcr/kemal/issues/617>
>
> This shard restores removed functionality.

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     kemal-kilt:
       github: crystal-garage/kemal-kilt
     # For slang, add:
     slang:
       github: jeromegn/slang
     # Any other template languages Crystal shard
   ```

2. Run `shards install`

## Usage

```crystal
require "kemal"
require "kemal-kilt"

# For slang, add:
require "kilt/slang"

get "/:name" do |env|
  name = env.params.url["name"]

  render "src/views/index.slang"
end
```

```slim
doctype html
html
  head
    title This is a title
  body
    | Hello #{name}
```
## Development

```
KEMAL_ENV=test crystal spec
```
## Contributing

1. Fork it (<https://github.com/crystal-garage/kemal-kilt/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Anton Maminov](https://github.com/mamantoha) - creator and maintainer
