### Clone Reason
Erlang could not be installed in M1, so Docker execution environment was added.  

Do not set the number of jobs more than 250,000 based on the allocation of 2 cores. Too many process errors.

# Demo system

> https://www.youtube.com/watch?v=JvBT4XBdoUE

## Getting started

Requires Erlang, Elixir, and node.js, as specified in the [.tool-versions](./.tool-versions) file.
You can use [asdf](https://github.com/asdf-vm/asdf) for that.

Building:

```
cd example_system
mix deps.get &&
pushd assets &&
npm install &&
popd &&
mix compile
```

Starting for development with live reload:

```
iex -S mix phx.server
```

Then, you can visit the following links:

  - http://localhost:4000
  - http://localhost:4000/load
  - http://localhost:4000/services

## Demo

Building and starting for production (in the background):

```
cd example_system
./rebuild.sh
./_build/prod/rel/system/bin/system start
```

Open the remote console:

```
./_build/prod/rel/system/bin/system remote_console
```

Hot upgrade with no downtime:

```
mix system.upgrade
```


## For Docker

Docker Building:

```
docker build -t demo_example .
```

docker run 

```
docker run -d --name demo_example -p 4000:4000 demo_example:latest
```