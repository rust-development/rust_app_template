# Rust App Template

## Usage

1. Clone the project
2. Call the script to initialize your module, such as lib or app

Create the app with *name*
```sh
make new.app name=<NAME>
```

Create the lib with *name*
```sh
make new.lib name=<NAME>
```

Test the specified sub project with *name*
```sh
make test name=<NAME>
```

Clean the project
```sh
make clean
```

Build the whole workspace
```sh
make build
```

Release the application
```sh
make release name=<NAME>
```

Launch
```sh
make launch
```

To run specified apps.
For example apps/cli

```sh
cargo run -p apps/cli
```

Cargo.toml
```sh
[workspace]

members = [
    "apps/cli",
]
```
