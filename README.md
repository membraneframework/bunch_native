# Bunch Native

[![Build Status](https://travis-ci.com/membraneframework/bunch-native.svg?branch=master)](https://travis-ci.com/membraneframework/bunch-native)

Native part of the [Bunch](https://hex.pm/packages/bunch) package.

Documentation is available at [HexDocs](https://hexdocs.pm/bunch_native/)

The source code is available at [GitHub](https://github.com/membraneframework/bunch-native)

## Installation

Add the following line to your `deps` in `mix.exs`. Run `mix deps.get`.

```elixir
{:bunch_native, "~> 0.1"}
```

All native stuff is exported as `:bunch` [Bundlex](https://hex.pm/packages/bundlex) dependency.
To import, add the following line to your nif specification in `bundlex.exs`
```elixir
deps: [bunch_native: :bunch]
```
and another one in your native header file
```c
#import <bunch/bunch.h>
```

## Copyright and License

Copyright 2018, [Software Mansion](https://swmansion.com/?utm_source=git&utm_medium=readme&utm_campaign=membrane)

[![Software Mansion](https://membraneframework.github.io/static/logo/swm_logo_readme.png)](https://swmansion.com/?utm_source=git&utm_medium=readme&utm_campaign=membrane)

Licensed under the [Apache License, Version 2.0](LICENSE)
